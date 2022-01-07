
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg {int dummy; } ;


 int printf (char*,int,int) ;
 int read_register (struct cfg*,int) ;
 int strtol (char*,char**,int ) ;
 int strtoul (char*,int *,int ) ;
 int write_register (struct cfg*,int,int) ;

__attribute__((used)) static int
set_register(struct cfg *cfg, char *arg)
{
 int a, v;
 char *c;

 a = strtol(arg, &c, 0);
 if (c==arg)
  return (1);
 if (*c == '=') {
  v = strtoul(c+1, ((void*)0), 0);
  write_register(cfg, a, v);
 }
 printf("\treg 0x%04x=0x%08x\n", a, read_register(cfg, a));
 return (0);
}
