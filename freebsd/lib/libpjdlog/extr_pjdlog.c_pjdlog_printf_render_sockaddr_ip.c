
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct printf_info {int dummy; } ;
struct __printf_io {int dummy; } ;
typedef int addr ;




 int INET6_ADDRSTRLEN ;
 int INET_ADDRSTRLEN ;
 int MAX (int ,int ) ;
 int PJDLOG_ABORT (char*,int ) ;
 int __printf_flush (struct __printf_io*) ;
 int __printf_out (struct __printf_io*,struct printf_info const*,char*,int ) ;
 int errno ;
 int * inet_ntop (int,int *,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strerror (int ) ;
 int strlen (char*) ;

__attribute__((used)) static int
pjdlog_printf_render_sockaddr_ip(struct __printf_io *io,
    const struct printf_info *pi, const void * const *arg)
{
 const struct sockaddr_storage *ss;
 char addr[MAX(INET_ADDRSTRLEN, INET6_ADDRSTRLEN)];
 int ret;

 ss = *(const struct sockaddr_storage * const *)arg[0];
 switch (ss->ss_family) {
 case 129:
     {
  const struct sockaddr_in *sin;

  sin = (const struct sockaddr_in *)ss;
  if (inet_ntop(ss->ss_family, &sin->sin_addr, addr,
      sizeof(addr)) == ((void*)0)) {
   PJDLOG_ABORT("inet_ntop(AF_INET) failed: %s.",
       strerror(errno));
  }
  break;
     }
 case 128:
     {
  const struct sockaddr_in6 *sin;

  sin = (const struct sockaddr_in6 *)ss;
  if (inet_ntop(ss->ss_family, &sin->sin6_addr, addr,
      sizeof(addr)) == ((void*)0)) {
   PJDLOG_ABORT("inet_ntop(AF_INET6) failed: %s.",
       strerror(errno));
  }
  break;
     }
 default:
  snprintf(addr, sizeof(addr), "[unsupported family %hhu]",
      ss->ss_family);
  break;
 }
 ret = __printf_out(io, pi, addr, strlen(addr));
 __printf_flush(io);
 return (ret);
}
