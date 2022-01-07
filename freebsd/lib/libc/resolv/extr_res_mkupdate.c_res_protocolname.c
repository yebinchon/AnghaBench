
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct valuelist {int dummy; } ;
struct protoent {char const* p_name; } ;


 struct protoent* cgetprotobynumber (int) ;
 struct valuelist* protolist ;
 int res_buildprotolist () ;
 int sprintf (char*,char*,int) ;

const char *
res_protocolname(int num) {
 static char number[8];
 struct protoent *pp;

 if (protolist == (struct valuelist *)0)
  res_buildprotolist();
 pp = cgetprotobynumber(num);
 if (pp == ((void*)0)) {
  (void) sprintf(number, "%d", num);
  return (number);
 }
 return (pp->p_name);
}
