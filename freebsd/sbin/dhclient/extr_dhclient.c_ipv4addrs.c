
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 scalar_t__ digitchar (char const) ;
 int inet_aton (char const*,struct in_addr*) ;
 scalar_t__ periodchar (char const) ;

int
ipv4addrs(const char * buf)
{
 struct in_addr jnk;
 int count = 0;

 while (inet_aton(buf, &jnk) == 1){
  count++;
  while (periodchar(*buf) || digitchar(*buf))
   buf++;
  if (*buf == '\0')
   return (count);
  while (*buf == ' ')
   buf++;
 }
 return (0);
}
