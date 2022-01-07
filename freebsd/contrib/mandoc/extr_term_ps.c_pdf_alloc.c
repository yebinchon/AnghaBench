
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manoutput {int dummy; } ;


 int TERMTYPE_PDF ;
 void* pspdf_alloc (struct manoutput const*,int ) ;

void *
pdf_alloc(const struct manoutput *outopts)
{
 return pspdf_alloc(outopts, TERMTYPE_PDF);
}
