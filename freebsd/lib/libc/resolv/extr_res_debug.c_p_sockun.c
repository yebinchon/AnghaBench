
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin_family; int sin_addr; } ;
struct TYPE_4__ {int sin6_addr; } ;
union res_sockaddr_union {TYPE_1__ sin; TYPE_2__ sin6; } ;




 int inet_ntop (int const,int *,char*,int) ;
 int sprintf (char*,char*,int) ;
 int strncpy (char*,char*,size_t) ;

const char *
p_sockun(union res_sockaddr_union u, char *buf, size_t size) {
 char ret[sizeof "ffff:ffff:ffff:ffff:ffff:ffff:123.123.123.123"];

 switch (u.sin.sin_family) {
 case 129:
  inet_ntop(129, &u.sin.sin_addr, ret, sizeof ret);
  break;





 default:
  sprintf(ret, "[af%d]", u.sin.sin_family);
  break;
 }
 if (size > 0U) {
  strncpy(buf, ret, size - 1);
  buf[size - 1] = '0';
 }
 return (buf);
}
