
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINUX_MSG_CONFIRM ;
 int LINUX_MSG_CTRUNC ;
 int LINUX_MSG_DONTROUTE ;
 int LINUX_MSG_DONTWAIT ;
 int LINUX_MSG_EOR ;
 int LINUX_MSG_ERRQUEUE ;
 int LINUX_MSG_FIN ;
 int LINUX_MSG_NOSIGNAL ;
 int LINUX_MSG_OOB ;
 int LINUX_MSG_PEEK ;
 int LINUX_MSG_PROXY ;
 int LINUX_MSG_RST ;
 int LINUX_MSG_SYN ;
 int LINUX_MSG_TRUNC ;
 int LINUX_MSG_WAITALL ;
 int MSG_CTRUNC ;
 int MSG_DONTROUTE ;
 int MSG_DONTWAIT ;
 int MSG_EOR ;
 int MSG_NOSIGNAL ;
 int MSG_OOB ;
 int MSG_PEEK ;
 int MSG_TRUNC ;
 int MSG_WAITALL ;

__attribute__((used)) static int
linux_to_bsd_msg_flags(int flags)
{
 int ret_flags = 0;

 if (flags & LINUX_MSG_OOB)
  ret_flags |= MSG_OOB;
 if (flags & LINUX_MSG_PEEK)
  ret_flags |= MSG_PEEK;
 if (flags & LINUX_MSG_DONTROUTE)
  ret_flags |= MSG_DONTROUTE;
 if (flags & LINUX_MSG_CTRUNC)
  ret_flags |= MSG_CTRUNC;
 if (flags & LINUX_MSG_TRUNC)
  ret_flags |= MSG_TRUNC;
 if (flags & LINUX_MSG_DONTWAIT)
  ret_flags |= MSG_DONTWAIT;
 if (flags & LINUX_MSG_EOR)
  ret_flags |= MSG_EOR;
 if (flags & LINUX_MSG_WAITALL)
  ret_flags |= MSG_WAITALL;
 if (flags & LINUX_MSG_NOSIGNAL)
  ret_flags |= MSG_NOSIGNAL;
 return (ret_flags);
}
