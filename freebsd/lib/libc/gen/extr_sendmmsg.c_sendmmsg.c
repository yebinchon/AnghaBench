
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmsghdr {int msg_len; int msg_hdr; } ;
typedef int ssize_t ;


 int __sys_sendmsg (int,int *,int) ;

ssize_t
sendmmsg(int s, struct mmsghdr *__restrict msgvec, size_t vlen, int flags)
{
 size_t i, sent;
 ssize_t ret;

 sent = 0;
 for (i = 0; i < vlen; i++, sent++) {
  ret = __sys_sendmsg(s, &msgvec[i].msg_hdr, flags);
  if (ret == -1) {
   if (sent != 0) {






    return (sent);
   }
   return (ret);
  }


  msgvec[i].msg_len = ret;
 }

 return (sent);
}
