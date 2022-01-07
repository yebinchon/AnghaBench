
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FILE ;


 int MAXDNAME ;
 int dn_expand (int const*,int const*,int const*,char*,int) ;
 int fputs (char*,int *) ;
 int putc (char,int *) ;

const u_char *
p_cdnname(const u_char *cp, const u_char *msg, int len, FILE *file) {
 char name[MAXDNAME];
 int n;

 if ((n = dn_expand(msg, msg + len, cp, name, sizeof name)) < 0)
  return (((void*)0));
 if (name[0] == '\0')
  putc('.', file);
 else
  fputs(name, file);
 return (cp + n);
}
