
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APset ;
 int EPset ;
 int NPset ;
 int OPset ;
 int gettable (int ,int ) ;
 int setdefaults () ;
 int tabent ;
 int tname ;

__attribute__((used)) static void
dogettytab(void)
{


 gettable(tname, tabent);






 if (OPset || EPset || APset || NPset)
  OPset = EPset = APset = NPset = 1;


 setdefaults();
}
