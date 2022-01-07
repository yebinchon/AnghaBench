
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int u_int8_t ;
typedef int u_int16_t ;
typedef scalar_t__ u_int ;
struct sockaddr_nl {scalar_t__ nl_family; scalar_t__ nl_pid; } ;
struct sockaddr {int dummy; } ;
struct nlmsghdr {int nlmsg_len; scalar_t__ nlmsg_type; int nlmsg_flags; unsigned int nlmsg_seq; scalar_t__ nlmsg_pid; } ;
struct nlmsgerr {int dummy; } ;
struct nfgenmsg {int res_id; int version; int nfgen_family; } ;
struct nfattr {int nfa_len; int nfa_type; } ;
struct my_nfattr {int nfa_len; int data; int nfa_type; } ;
typedef int socklen_t ;
typedef int snl ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ pcap_t ;
typedef int buf ;


 scalar_t__ AF_NETLINK ;
 int EBADMSG ;
 int EINTR ;
 int EINVAL ;
 scalar_t__ NFA_ALIGN (int ) ;
 int NFA_DATA (struct nfattr*) ;
 int NFA_LENGTH (int ) ;
 int NFNETLINK_V0 ;
 scalar_t__ NLMSG_ALIGN (int) ;
 scalar_t__ NLMSG_DATA (struct nlmsghdr*) ;
 scalar_t__ NLMSG_DONE ;
 scalar_t__ NLMSG_ERROR ;
 int NLMSG_LENGTH (int) ;
 struct nlmsghdr* NLMSG_NEXT (struct nlmsghdr*,int) ;
 scalar_t__ NLMSG_OK (struct nlmsghdr*,scalar_t__) ;
 scalar_t__ NLMSG_SPACE (int ) ;
 int NLM_F_ACK ;
 int NLM_F_MULTI ;
 int NLM_F_REQUEST ;
 int errno ;
 int htons (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct sockaddr_nl*,int ,int) ;
 int recvfrom (int ,char*,int,int ,struct sockaddr*,int*) ;
 int sendto (int ,struct nlmsghdr*,int,int ,struct sockaddr*,int) ;
 unsigned int time (int *) ;

__attribute__((used)) static int
netfilter_send_config_msg(const pcap_t *handle, uint16_t msg_type, int ack, u_int8_t family, u_int16_t res_id, const struct my_nfattr *mynfa)
{
 char buf[1024] __attribute__ ((aligned));

 struct nlmsghdr *nlh = (struct nlmsghdr *) buf;
 struct nfgenmsg *nfg = (struct nfgenmsg *) (buf + sizeof(struct nlmsghdr));

 struct sockaddr_nl snl;
 static unsigned int seq_id;

 if (!seq_id)
  seq_id = time(((void*)0));
 ++seq_id;

 nlh->nlmsg_len = NLMSG_LENGTH(sizeof(struct nfgenmsg));
 nlh->nlmsg_type = msg_type;
 nlh->nlmsg_flags = NLM_F_REQUEST | (ack ? NLM_F_ACK : 0);
 nlh->nlmsg_pid = 0;
 nlh->nlmsg_seq = seq_id;

 nfg->nfgen_family = family;
 nfg->version = NFNETLINK_V0;
 nfg->res_id = htons(res_id);

 if (mynfa) {
  struct nfattr *nfa = (struct nfattr *) (buf + NLMSG_ALIGN(nlh->nlmsg_len));

  nfa->nfa_type = mynfa->nfa_type;
  nfa->nfa_len = NFA_LENGTH(mynfa->nfa_len);
  memcpy(NFA_DATA(nfa), mynfa->data, mynfa->nfa_len);
  nlh->nlmsg_len = NLMSG_ALIGN(nlh->nlmsg_len) + NFA_ALIGN(nfa->nfa_len);
 }

 memset(&snl, 0, sizeof(snl));
 snl.nl_family = AF_NETLINK;

 if (sendto(handle->fd, nlh, nlh->nlmsg_len, 0, (struct sockaddr *) &snl, sizeof(snl)) == -1)
  return -1;

 if (!ack)
  return 0;


 do {
  socklen_t addrlen = sizeof(snl);
  int len;


  do {
   len = recvfrom(handle->fd, buf, sizeof(buf), 0, (struct sockaddr *) &snl, &addrlen);
  } while ((len == -1) && (errno == EINTR));

  if (len <= 0)
   return len;

  if (addrlen != sizeof(snl) || snl.nl_family != AF_NETLINK) {
   errno = EINVAL;
   return -1;
  }

  nlh = (struct nlmsghdr *) buf;
  if (snl.nl_pid != 0 || seq_id != nlh->nlmsg_seq)
   continue;

  while ((u_int)len >= NLMSG_SPACE(0) && NLMSG_OK(nlh, (u_int)len)) {
   if (nlh->nlmsg_type == NLMSG_ERROR || (nlh->nlmsg_type == NLMSG_DONE && nlh->nlmsg_flags & NLM_F_MULTI)) {
    if (nlh->nlmsg_len < NLMSG_ALIGN(sizeof(struct nlmsgerr))) {
     errno = EBADMSG;
     return -1;
    }
    errno = -(*((int *)NLMSG_DATA(nlh)));
    return (errno == 0) ? 0 : -1;
   }
   nlh = NLMSG_NEXT(nlh, len);
  }
 } while (1);

 return -1;
}
