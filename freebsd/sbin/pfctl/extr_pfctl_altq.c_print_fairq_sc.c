
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int bw_percent; } ;
struct TYPE_3__ {int bw_percent; } ;
struct node_fairq_sc {TYPE_2__ m2; TYPE_1__ m1; } ;


 int printf (char*,...) ;
 char* rate2str (double) ;

void
print_fairq_sc(const char *scname, u_int m1, u_int d, u_int m2,
    const struct node_fairq_sc *sc)
{
 printf(" %s", scname);

 if (d != 0) {
  printf("(");
  if (sc != ((void*)0) && sc->m1.bw_percent > 0)
   printf("%u%%", sc->m1.bw_percent);
  else
   printf("%s", rate2str((double)m1));
  printf(" %u", d);
 }

 if (sc != ((void*)0) && sc->m2.bw_percent > 0)
  printf(" %u%%", sc->m2.bw_percent);
 else
  printf(" %s", rate2str((double)m2));

 if (d != 0)
  printf(")");
}
