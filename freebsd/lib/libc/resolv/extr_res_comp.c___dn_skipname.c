
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int ns_name_skip (int const**,int const*) ;

int
dn_skipname(const u_char *ptr, const u_char *eom) {
 const u_char *saveptr = ptr;

 if (ns_name_skip(&ptr, eom) == -1)
  return (-1);
 return (ptr - saveptr);
}
