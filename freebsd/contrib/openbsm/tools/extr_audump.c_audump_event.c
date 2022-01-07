
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ae_number; char* ae_name; char* ae_desc; int ae_class; } ;
typedef TYPE_1__ au_event_ent_t ;


 TYPE_1__* getauevent () ;
 int printf (char*,...) ;
 int printf_classmask (int ) ;

__attribute__((used)) static void
audump_event(void)
{
 au_event_ent_t *ep;

 while ((ep = getauevent()) != ((void*)0)) {
  printf("%d:%s:%s:", ep->ae_number, ep->ae_name, ep->ae_desc);
  printf_classmask(ep->ae_class);
  printf("\n");
 }
}
