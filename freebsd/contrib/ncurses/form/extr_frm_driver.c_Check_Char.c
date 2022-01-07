
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef TYPE_2__ TypeArgument ;
struct TYPE_7__ {int (* occheck ) (int,void*) ;int (* gccheck ) (int,int *,int *,void*) ;} ;
struct TYPE_9__ {int status; int (* ccheck ) (int,void*) ;TYPE_1__ charcheck; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef int FORM ;
typedef TYPE_3__ FIELDTYPE ;
typedef int FIELD ;


 int FALSE ;
 int TRUE ;
 int UChar (int) ;
 int _GENERIC ;
 int _LINKED_TYPE ;
 int assert (TYPE_2__*) ;
 int iscntrl (int ) ;
 int stub1 (int,int *,int *,void*) ;
 int stub2 (int,void*) ;
 int stub3 (int,void*) ;

__attribute__((used)) static bool
Check_Char(FORM *form,
    FIELD *field,
    FIELDTYPE *typ,
    int ch,
    TypeArgument *argp)
{
  if (typ)
    {
      if (typ->status & _LINKED_TYPE)
 {
   assert(argp);
   return (
     Check_Char(form, field, typ->left, ch, argp->left) ||
     Check_Char(form, field, typ->right, ch, argp->right));
 }
      else
 {
   if (typ->ccheck)
     return typ->ccheck(ch, (void *)argp);

 }
    }
  return (!iscntrl(UChar(ch)) ? TRUE : FALSE);
}
