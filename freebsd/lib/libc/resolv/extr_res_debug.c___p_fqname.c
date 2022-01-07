
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FILE ;


 int MAXCDNAME ;
 int MAXDNAME ;
 int fputs (char*,int *) ;
 int * p_fqnname (int const*,int const*,int ,char*,int) ;

const u_char *
p_fqname(const u_char *cp, const u_char *msg, FILE *file) {
 char name[MAXDNAME];
 const u_char *n;

 n = p_fqnname(cp, msg, MAXCDNAME, name, sizeof name);
 if (n == ((void*)0))
  return (((void*)0));
 fputs(name, file);
 return (n);
}
