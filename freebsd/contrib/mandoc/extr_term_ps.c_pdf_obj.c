
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {TYPE_1__* ps; } ;
struct TYPE_2__ {size_t pdfobjsz; int pdfbytes; int * pdfobjs; } ;


 int assert (int) ;
 int * mandoc_reallocarray (int *,size_t,int) ;
 int ps_printf (struct termp*,char*,size_t) ;

__attribute__((used)) static void
pdf_obj(struct termp *p, size_t obj)
{

 assert(obj > 0);

 if ((obj - 1) >= p->ps->pdfobjsz) {
  p->ps->pdfobjsz = obj + 128;
  p->ps->pdfobjs = mandoc_reallocarray(p->ps->pdfobjs,
      p->ps->pdfobjsz, sizeof(size_t));
 }

 p->ps->pdfobjs[(int)obj - 1] = p->ps->pdfbytes;
 ps_printf(p, "%zu 0 obj\n", obj);
}
