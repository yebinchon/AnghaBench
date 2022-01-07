
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 scalar_t__ ns_format_ttl (int,char*,int) ;
 char* p_time_nbuf ;
 int sprintf (char*,char*,int) ;

const char *
p_time(u_int32_t value) {
 char *nbuf = p_time_nbuf;

 if (ns_format_ttl(value, nbuf, sizeof nbuf) < 0)
  sprintf(nbuf, "%u", value);
 return (nbuf);
}
