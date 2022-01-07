
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TypeArgument ;
struct TYPE_8__ {scalar_t__ arg; int type; } ;
struct TYPE_7__ {TYPE_2__* current; } ;
typedef TYPE_1__ FORM ;
typedef TYPE_2__ FIELD ;


 int E_OK ;
 int E_REQUEST_DENIED ;
 scalar_t__ Previous_Choice (TYPE_1__*,int ,TYPE_2__*,int *) ;
 int Synchronize_Buffer (TYPE_1__*) ;
 int T (int ) ;
 int T_CALLED (char*) ;
 int returnCode (int ) ;

__attribute__((used)) static int
CR_Previous_Choice(FORM *form)
{
  FIELD *field = form->current;

  T((T_CALLED("CR_Previous_Choice(%p)"), (void *)form));
  Synchronize_Buffer(form);
  returnCode((Previous_Choice(form, field->type, field, (TypeArgument *)(field->arg)))
      ? E_OK
      : E_REQUEST_DENIED);
}
