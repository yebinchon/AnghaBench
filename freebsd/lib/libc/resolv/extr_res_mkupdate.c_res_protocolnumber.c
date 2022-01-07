
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct valuelist {int dummy; } ;


 int findservice (char const*,struct valuelist**) ;
 struct valuelist* protolist ;
 int res_buildprotolist () ;

int
res_protocolnumber(const char *p) {
 if (protolist == (struct valuelist *)0)
  res_buildprotolist();
 return (findservice(p, &protolist));
}
