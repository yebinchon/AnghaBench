
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat44_cfg_nat {char* name; } ;


 int printf (char*,char*,char*) ;

__attribute__((used)) static void
nat_show_log(struct nat44_cfg_nat *n, void *arg)
{
 char *buf;

 buf = (char *)(n + 1);
 if (buf[0] != '\0')
  printf("nat %s: %s\n", n->name, buf);
}
