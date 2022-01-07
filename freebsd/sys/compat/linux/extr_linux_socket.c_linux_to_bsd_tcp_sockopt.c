
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCP_KEEPCNT ;
 int TCP_KEEPIDLE ;
 int TCP_KEEPINTVL ;
 int TCP_MAXSEG ;
 int TCP_MD5SIG ;
 int TCP_NODELAY ;

__attribute__((used)) static int
linux_to_bsd_tcp_sockopt(int opt)
{

 switch (opt) {
 case 128:
  return (TCP_NODELAY);
 case 130:
  return (TCP_MAXSEG);
 case 132:
  return (TCP_KEEPIDLE);
 case 131:
  return (TCP_KEEPINTVL);
 case 133:
  return (TCP_KEEPCNT);
 case 129:
  return (TCP_MD5SIG);
 }
 return (-1);
}
