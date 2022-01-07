
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {scalar_t__ s_addr; } ;
struct sockaddr_in {struct in_addr sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct msghdr {int msg_iovlen; char* msg_name; void* msg_controllen; scalar_t__ msg_control; int msg_namelen; struct iovec* msg_iov; } ;
struct iovec {char* iov_base; int iov_len; } ;
struct cmsghdr {int cmsg_type; int cmsg_level; void* cmsg_len; } ;
typedef int socklen_t ;
typedef int msg ;
typedef scalar_t__ caddr_t ;


 scalar_t__ AF_INET ;
 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 void* CMSG_LEN (int) ;
 int CMSG_SPACE (int) ;
 scalar_t__ INADDR_ANY ;
 int IPPROTO_IP ;
 int IP_SENDSRCADDR ;
 int _sendmsg (int,struct msghdr*,int ) ;
 int memcpy (int ,struct in_addr*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int
svc_dg_sendto(int fd, char *buf, int buflen,
    const struct sockaddr *raddr, socklen_t raddrlen,
    const struct sockaddr *laddr, socklen_t laddrlen)
{
 struct msghdr msg;
 struct iovec msg_iov[1];
 struct sockaddr_in *laddr_in = (struct sockaddr_in *)laddr;
 struct in_addr *lin = &laddr_in->sin_addr;
 char tmp[CMSG_SPACE(sizeof(*lin))];
 struct cmsghdr *cmsg;

 memset((char *)&msg, 0, sizeof(msg));
 msg_iov[0].iov_base = buf;
 msg_iov[0].iov_len = buflen;
 msg.msg_iov = msg_iov;
 msg.msg_iovlen = 1;
 msg.msg_namelen = raddrlen;
 msg.msg_name = (char *)raddr;

 if (laddr != ((void*)0) && laddr->sa_family == AF_INET &&
     lin->s_addr != INADDR_ANY) {
  msg.msg_control = (caddr_t)tmp;
  msg.msg_controllen = CMSG_LEN(sizeof(*lin));
  cmsg = CMSG_FIRSTHDR(&msg);
  cmsg->cmsg_len = CMSG_LEN(sizeof(*lin));
  cmsg->cmsg_level = IPPROTO_IP;
  cmsg->cmsg_type = IP_SENDSRCADDR;
  memcpy(CMSG_DATA(cmsg), lin, sizeof(*lin));
 }

 return _sendmsg(fd, &msg, 0);
}
