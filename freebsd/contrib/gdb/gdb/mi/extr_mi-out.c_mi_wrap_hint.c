
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;


 int wrap_here (char*) ;

void
mi_wrap_hint (struct ui_out *uiout, char *identstring)
{
  wrap_here (identstring);
}
