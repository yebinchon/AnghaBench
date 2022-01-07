
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_8__ {scalar_t__ ss_lno; size_t ss_screens; } ;
struct TYPE_7__ {size_t cols; } ;
typedef TYPE_1__ SCR ;


 scalar_t__ O_ISSET (TYPE_1__*,int ) ;
 int O_LEFTRIGHT ;
 TYPE_4__* VIP (TYPE_1__*) ;
 size_t vs_columns (TYPE_1__*,int *,scalar_t__,size_t*,int *) ;

size_t
vs_screens(SCR *sp, recno_t lno, size_t *cnop)
{
 size_t cols, screens;


 if (O_ISSET(sp, O_LEFTRIGHT))
  return (1);







 if (cnop == ((void*)0)) {
  if (VIP(sp)->ss_lno == lno)
   return (VIP(sp)->ss_screens);
 } else if (*cnop == 0)
  return (1);


 cols = vs_columns(sp, ((void*)0), lno, cnop, ((void*)0));

 screens = (cols / sp->cols + (cols % sp->cols ? 1 : 0));
 if (screens == 0)
  screens = 1;


 if (cnop == ((void*)0)) {
  VIP(sp)->ss_lno = lno;
  VIP(sp)->ss_screens = screens;
 }
 return (screens);
}
