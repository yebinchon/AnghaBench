
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ isip4 (char const*,char**) ;
 scalar_t__ isip6 (char const*,char**) ;
 int stderr ;
 char* strdup (char const*) ;

__attribute__((used)) static char*
massage_qname(const char* nm, int* reverse)
{

 char* res;
 if(isip4(nm, &res)) {
  *reverse = 1;
 } else if(isip6(nm, &res)) {
  *reverse = 1;
 } else {
  res = strdup(nm);
 }
 if(!res) {
  fprintf(stderr, "error: out of memory\n");
  exit(1);
 }
 return res;
}
