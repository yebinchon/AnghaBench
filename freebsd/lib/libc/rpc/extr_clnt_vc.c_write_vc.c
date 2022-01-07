
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_2__ {void* re_status; void* re_errno; } ;
struct ct_data {TYPE_1__ ct_error; int ct_fd; } ;
typedef int socklen_t ;
typedef int sa ;


 scalar_t__ AF_LOCAL ;
 void* RPC_CANTSEND ;
 int __msgwrite (int ,void*,size_t) ;
 scalar_t__ _getpeername (int ,struct sockaddr*,int*) ;
 int _write (int ,void*,size_t) ;
 void* errno ;

__attribute__((used)) static int
write_vc(void *ctp, void *buf, int len)
{
 struct sockaddr sa;
 socklen_t sal;
 struct ct_data *ct = (struct ct_data *)ctp;
 int i, cnt;

 sal = sizeof(sa);
 if ((_getpeername(ct->ct_fd, &sa, &sal) == 0) &&
     (sa.sa_family == AF_LOCAL)) {
  for (cnt = len; cnt > 0; cnt -= i, buf = (char *)buf + i) {
   if ((i = __msgwrite(ct->ct_fd, buf,
        (size_t)cnt)) == -1) {
    ct->ct_error.re_errno = errno;
    ct->ct_error.re_status = RPC_CANTSEND;
    return (-1);
   }
  }
 } else {
  for (cnt = len; cnt > 0; cnt -= i, buf = (char *)buf + i) {
   if ((i = _write(ct->ct_fd, buf, (size_t)cnt)) == -1) {
    ct->ct_error.re_errno = errno;
    ct->ct_error.re_status = RPC_CANTSEND;
    return (-1);
   }
  }
 }
 return (len);
}
