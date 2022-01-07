
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
print_enadis(int enadis, char *s)
{

 printf(" %s %sabled", s, (enadis == 0) ? "dis" : "en");
}
