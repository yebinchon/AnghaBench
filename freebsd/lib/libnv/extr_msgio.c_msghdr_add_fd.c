
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmsghdr {int cmsg_len; int cmsg_type; int cmsg_level; } ;
typedef int fd ;


 int CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int) ;
 int PJDLOG_ASSERT (int) ;
 int SCM_RIGHTS ;
 int SOL_SOCKET ;
 int bcopy (int*,int ,int) ;

__attribute__((used)) static int
msghdr_add_fd(struct cmsghdr *cmsg, int fd)
{

 PJDLOG_ASSERT(fd >= 0);

 cmsg->cmsg_level = SOL_SOCKET;
 cmsg->cmsg_type = SCM_RIGHTS;
 cmsg->cmsg_len = CMSG_LEN(sizeof(fd));
 bcopy(&fd, CMSG_DATA(cmsg), sizeof(fd));

 return (0);
}
