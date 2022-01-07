
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {unsigned char* c_cc; } ;


 size_t C_DISCARD ;
 size_t C_DSUSP ;
 size_t C_DSWTCH ;
 size_t C_EOF ;
 size_t C_EOL ;
 size_t C_EOL2 ;
 size_t C_ERASE ;
 size_t C_ERASE2 ;
 size_t C_INTR ;
 size_t C_KILL ;
 size_t C_KILL2 ;
 size_t C_LNEXT ;
 size_t C_MIN ;
 size_t C_PAGE ;
 size_t C_PGOFF ;
 size_t C_QUIT ;
 size_t C_REPRINT ;
 size_t C_START ;
 size_t C_STATUS ;
 size_t C_STOP ;
 size_t C_SUSP ;
 size_t C_SWTCH ;
 size_t C_TIME ;
 size_t C_WERASE ;
 size_t VDISCARD ;
 size_t VDSUSP ;
 size_t VDSWTCH ;
 size_t VEOF ;
 size_t VEOL ;
 size_t VEOL2 ;
 size_t VERASE ;
 size_t VERASE2 ;
 size_t VINTR ;
 size_t VKILL ;
 size_t VKILL2 ;
 size_t VLNEXT ;
 size_t VMIN ;
 size_t VPAGE ;
 size_t VPGOFF ;
 size_t VQUIT ;
 size_t VREPRINT ;
 size_t VSTART ;
 size_t VSTATUS ;
 size_t VSTOP ;
 size_t VSUSP ;
 size_t VSWTCH ;
 size_t VTIME ;
 size_t VWERASE ;

__attribute__((used)) static void
tty__setchar(struct termios *td, unsigned char *s)
{
}
