
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; scalar_t__ revents; } ;
struct nlmsghdr {int dummy; } ;
struct nlmsg_list {int size; int seq; struct nlmsg_list* nlm_next; struct nlmsghdr* nlh; } ;


 int NLM_F_MATCH ;
 int NLM_F_ROOT ;
 int POLLIN ;
 int POLLPRI ;
 int __set_errno (int) ;
 int errno ;
 int free (struct nlmsghdr*) ;
 scalar_t__ malloc (int) ;
 int nl_getmsg (int,int,int,struct nlmsghdr**,int*) ;
 int nl_sendreq (int,int,int,int*) ;
 int poll (struct pollfd*,int,int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
nl_getlist(int sd, int seq,
    int request,
    struct nlmsg_list **nlm_list,
    struct nlmsg_list **nlm_end)
{
  struct nlmsghdr *nlh = ((void*)0);
  int status;
  int done = 0;
  int tries = 3;

 try_again:
  status = nl_sendreq(sd, request, NLM_F_ROOT|NLM_F_MATCH, &seq);
  if (status < 0)
    return status;
  if (seq == 0)
    seq = (int)time(((void*)0));
  while(!done){
    struct pollfd pfd;

    pfd.fd = sd;
    pfd.events = POLLIN | POLLPRI;
    pfd.revents = 0;
    status = poll(&pfd, 1, 1000);
    if (status < 0)
 return status;
    else if (status == 0) {
 seq++;
 if (tries-- > 0)
     goto try_again;
 return -1;
    }

    status = nl_getmsg(sd, request, seq, &nlh, &done);
    if (status < 0)
      return status;
    if (nlh){
      struct nlmsg_list *nlm_next = (struct nlmsg_list *)malloc(sizeof(struct nlmsg_list));
      if (nlm_next == ((void*)0)){
 int saved_errno = errno;
 free(nlh);
 __set_errno(saved_errno);
 status = -1;
      } else {
 nlm_next->nlm_next = ((void*)0);
 nlm_next->nlh = (struct nlmsghdr *)nlh;
 nlm_next->size = status;
 nlm_next->seq = seq;
 if (*nlm_list == ((void*)0)){
   *nlm_list = nlm_next;
   *nlm_end = nlm_next;
 } else {
   (*nlm_end)->nlm_next = nlm_next;
   *nlm_end = nlm_next;
 }
      }
    }
  }
  return status >= 0 ? seq : status;
}
