
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct unicx {size_t errcnt; TYPE_1__* err; int tabsiz; int multiline; int cause_hard; int bearer_hard; int git_hard; int pnni; int q2932; } ;
struct TYPE_2__ {size_t err; size_t act; scalar_t__ man; int ie; } ;







 int uni_print_init (char*,size_t,struct unicx*) ;
 int uni_printf (struct unicx*,char*,...) ;
 int uni_putc (char,struct unicx*) ;

void
uni_print_cx(char *buf, size_t size, struct unicx *cx)
{
 static const char *acttab[] = {
  "clr",
  "ign",
  "rep",
  "x03",
  "x04",
  "mig",
  "mrp",
  "x07",
  "def",
 };

 static const char *errtab[] = {
  [128] = "unk",
  [130] = "len",
  [131] = "bad",
  [132] = "acc",
  [129] = "mis",
 };

 u_int i;

 uni_print_init(buf, size, cx);

 uni_printf(cx, "q2932		%d\n", cx->q2932);
 uni_printf(cx, "pnni		%d\n", cx->pnni);
 uni_printf(cx, "git_hard	%d\n", cx->git_hard);
 uni_printf(cx, "bearer_hard	%d\n", cx->bearer_hard);
 uni_printf(cx, "cause_hard	%d\n", cx->cause_hard);

 uni_printf(cx, "multiline	%d\n", cx->multiline);
 uni_printf(cx, "tabsiz		%d\n", cx->tabsiz);

 uni_printf(cx, "errcnt		%d (", cx->errcnt);
 for(i = 0; i < cx->errcnt; i++) {
  uni_printf(cx, "%02x[%s,%s%s]", cx->err[i].ie,
      errtab[cx->err[i].err], acttab[cx->err[i].act],
      cx->err[i].man ? ",M" : "");
  if(i != cx->errcnt - 1)
   uni_putc(' ', cx);
 }
 uni_printf(cx, ")\n");
}
