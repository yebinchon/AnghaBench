
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ac_class; char* ac_name; char* ac_desc; } ;
typedef TYPE_1__ au_class_ent_t ;


 TYPE_1__* getauclassent () ;
 int printf (char*,int,char*,char*) ;

__attribute__((used)) static void
audump_class(void)
{
 au_class_ent_t *cp;

 while ((cp = getauclassent()) != ((void*)0))
  printf("0x%08x:%s:%s\n", cp->ac_class, cp->ac_name,
      cp->ac_desc);
}
