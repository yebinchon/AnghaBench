
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {char* msg_control; int msg_controllen; } ;
struct cmsghdr {int cmsg_len; } ;
typedef int msg ;
typedef int dummybuf ;
typedef int ISC_SOCKADDR_LEN_T ;


 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 int CMSG_SPACE (int) ;
 int cmsg_len (int) ;
 int memset (struct msghdr*,int ,int) ;

__attribute__((used)) static inline ISC_SOCKADDR_LEN_T
cmsg_space(ISC_SOCKADDR_LEN_T len) {



 struct msghdr msg;
 struct cmsghdr *cmsgp;




 char dummybuf[sizeof(struct cmsghdr) + 1024];

 memset(&msg, 0, sizeof(msg));
 msg.msg_control = dummybuf;
 msg.msg_controllen = sizeof(dummybuf);

 cmsgp = (struct cmsghdr *)dummybuf;
 cmsgp->cmsg_len = cmsg_len(len);

 cmsgp = CMSG_NXTHDR(&msg, cmsgp);
 if (cmsgp != ((void*)0))
  return ((char *)cmsgp - (char *)msg.msg_control);
 else
  return (0);

}
