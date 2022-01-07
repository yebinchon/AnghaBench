
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_ESC (char) ;
 scalar_t__ GoodStr (int ) ;
 int PUTPURE ;
 int STRnobeep ;
 int STRvisiblebell ;
 int Str (int ) ;
 int T_bl ;
 int T_vb ;
 scalar_t__ adrof (int ) ;
 int beep_cmd () ;
 int putraw (int ) ;
 int tputs (int ,int,int ) ;

void
SoundBeep(void)
{
    beep_cmd ();
    if (adrof(STRnobeep))
 return;

    if (GoodStr(T_vb) && adrof(STRvisiblebell))
 (void) tputs(Str(T_vb), 1, PUTPURE);
    else if (GoodStr(T_bl))

 (void) tputs(Str(T_bl), 1, PUTPURE);
    else
 (void) putraw(CTL_ESC('\007'));
}
