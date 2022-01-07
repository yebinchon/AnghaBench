
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curparse {int outtype; int outopts; int outdata; } ;
 int ascii_alloc (int ) ;
 int html_alloc (int ) ;
 int locale_alloc (int ) ;
 int pdf_alloc (int ) ;
 int ps_alloc (int ) ;
 int utf8_alloc (int ) ;

__attribute__((used)) static void
outdata_alloc(struct curparse *curp)
{
 switch (curp->outtype) {
 case 132:
  curp->outdata = html_alloc(curp->outopts);
  break;
 case 128:
  curp->outdata = utf8_alloc(curp->outopts);
  break;
 case 131:
  curp->outdata = locale_alloc(curp->outopts);
  break;
 case 133:
  curp->outdata = ascii_alloc(curp->outopts);
  break;
 case 130:
  curp->outdata = pdf_alloc(curp->outopts);
  break;
 case 129:
  curp->outdata = ps_alloc(curp->outopts);
  break;
 default:
  break;
 }
}
