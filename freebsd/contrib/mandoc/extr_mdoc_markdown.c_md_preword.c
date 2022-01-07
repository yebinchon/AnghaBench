
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESC_BOL ;
 int ESC_EOL ;
 int ESC_FON ;
 int MD_Bk ;
 int MD_Sm ;
 int MD_br ;
 int MD_nl ;
 int MD_nonl ;
 int MD_sp ;
 int MD_spc ;
 int MD_spc_force ;
 int escflags ;
 int fputs (char*,int ) ;
 scalar_t__ list_blocks ;
 int md_named (char*) ;
 char* md_stack (char) ;
 scalar_t__ outcount ;
 int outflags ;
 int putchar (char const) ;
 int stdout ;

__attribute__((used)) static void
md_preword(void)
{
 const char *cp;
 if (list_blocks && outflags & MD_sp) {
  outflags &= ~MD_sp;
  outflags |= MD_br;
 }







 if (outflags & MD_sp)
  putchar('\n');
 else if (outflags & MD_br) {
  putchar(' ');
  putchar(' ');
 } else if (outflags & MD_nl && escflags & ESC_EOL)
  md_named("zwnj");



 if (outflags & (MD_nl | MD_br | MD_sp)) {
  putchar('\n');
  for (cp = md_stack('\0'); *cp != '\0'; cp++) {
   putchar(*cp);
   if (*cp == '>')
    putchar(' ');
  }
  outflags &= ~(MD_nl | MD_br | MD_sp);
  escflags = ESC_BOL;
  outcount = 0;



 } else if (outflags & MD_spc) {
  if (outflags & MD_Bk)
   fputs("&nbsp;", stdout);
  else
   putchar(' ');
  escflags &= ~ESC_FON;
  outcount++;
 }

 outflags &= ~(MD_spc_force | MD_nonl);
 if (outflags & MD_Sm)
  outflags |= MD_spc;
 else
  outflags &= ~MD_spc;
}
