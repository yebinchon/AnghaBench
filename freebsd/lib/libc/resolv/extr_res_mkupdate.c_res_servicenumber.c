
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct valuelist {int dummy; } ;


 int findservice (char const*,struct valuelist**) ;
 int res_buildservicelist () ;
 struct valuelist* servicelist ;

int
res_servicenumber(const char *p) {
 if (servicelist == (struct valuelist *)0)
  res_buildservicelist();
 return (findservice(p, &servicelist));
}
