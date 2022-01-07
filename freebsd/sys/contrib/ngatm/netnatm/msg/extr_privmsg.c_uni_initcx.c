
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int tabsiz; } ;


 int memset (struct unicx*,int ,int) ;

void
uni_initcx(struct unicx *cx)
{
 memset(cx, 0, sizeof(struct unicx));
 cx->tabsiz = 4;
}
