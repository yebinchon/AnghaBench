
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {TYPE_1__* ps; } ;
struct TYPE_2__ {int flags; char* psmarg; int psmargcur; int pdfbytes; } ;


 int PS_MARGINS ;
 int ps_growbuf (struct termp*,int) ;
 int putchar (char) ;

__attribute__((used)) static void
ps_putchar(struct termp *p, char c)
{
 int pos;



 if ( ! (PS_MARGINS & p->ps->flags)) {
  putchar(c);
  p->ps->pdfbytes++;
  return;
 }

 ps_growbuf(p, 2);

 pos = (int)p->ps->psmargcur++;
 p->ps->psmarg[pos++] = c;
 p->ps->psmarg[pos] = '\0';
}
