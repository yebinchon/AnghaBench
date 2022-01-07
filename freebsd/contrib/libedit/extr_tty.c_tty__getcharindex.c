
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VDISCARD ;
 int VDSUSP ;
 int VDSWTCH ;
 int VEOF ;
 int VEOL ;
 int VEOL2 ;
 int VERASE ;
 int VERASE2 ;
 int VINTR ;
 int VKILL ;
 int VKILL2 ;
 int VLNEXT ;
 int VMIN ;
 int VPAGE ;
 int VPGOFF ;
 int VQUIT ;
 int VREPRINT ;
 int VSTART ;
 int VSTATUS ;
 int VSTOP ;
 int VSUSP ;
 int VSWTCH ;
 int VTIME ;
 int VWERASE ;

__attribute__((used)) static int
tty__getcharindex(int i)
{
 switch (i) {
 default:
  return -1;
 }
}
