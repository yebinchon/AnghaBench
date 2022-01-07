
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ** KeyMacro ;
 int MAXMACROLEVELS ;
 int MacroLvl ;
 int SoundBeep () ;
 int flush () ;

void
PushMacro(Char *str)
{
    if (str != ((void*)0) && MacroLvl + 1 < MAXMACROLEVELS) {
 MacroLvl++;
 KeyMacro[MacroLvl] = str;
    }
    else {
 SoundBeep();
 flush();
    }
}
