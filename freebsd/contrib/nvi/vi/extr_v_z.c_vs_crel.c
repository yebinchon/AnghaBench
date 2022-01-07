
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long t_minrows; long t_rows; int rows; } ;
typedef TYPE_1__ SCR ;


 int F_SET (TYPE_1__*,int ) ;
 int HMAP ;
 int SC_SCR_REDRAW ;
 int TMAP ;

int
vs_crel(SCR *sp, long int count)
{
 sp->t_minrows = sp->t_rows = count;
 if (sp->t_rows > sp->rows - 1)
  sp->t_minrows = sp->t_rows = sp->rows - 1;
 TMAP = HMAP + (sp->t_rows - 1);
 F_SET(sp, SC_SCR_REDRAW);
 return (0);
}
