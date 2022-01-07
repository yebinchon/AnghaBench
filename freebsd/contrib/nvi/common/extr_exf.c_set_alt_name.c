
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * alt_name; } ;
typedef TYPE_1__ SCR ;


 int M_SYSERR ;
 int free (int *) ;
 int msgq (TYPE_1__*,int ,int *) ;
 int * strdup (char*) ;

void
set_alt_name(
 SCR *sp,
 char *name)
{
 if (sp->alt_name != ((void*)0))
  free(sp->alt_name);
 if (name == ((void*)0))
  sp->alt_name = ((void*)0);
 else if ((sp->alt_name = strdup(name)) == ((void*)0))
  msgq(sp, M_SYSERR, ((void*)0));
}
