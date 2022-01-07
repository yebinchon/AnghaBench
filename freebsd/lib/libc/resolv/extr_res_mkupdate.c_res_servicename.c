
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct valuelist {int dummy; } ;
struct servent {char const* s_name; } ;


 struct servent* cgetservbyport (int ,char const*) ;
 int htons (int) ;
 int res_buildservicelist () ;
 struct valuelist* servicelist ;
 int sprintf (char*,char*,int) ;

const char *
res_servicename(u_int16_t port, const char *proto) {
 static char number[8];
 struct servent *ss;

 if (servicelist == (struct valuelist *)0)
  res_buildservicelist();
 ss = cgetservbyport(htons(port), proto);
 if (ss == ((void*)0)) {
  (void) sprintf(number, "%d", port);
  return (number);
 }
 return (ss->s_name);
}
