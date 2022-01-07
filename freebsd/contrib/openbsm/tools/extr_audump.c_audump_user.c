
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* au_name; } ;
typedef TYPE_1__ au_user_ent_t ;


 TYPE_1__* getauuserent () ;
 int printf (char*,...) ;

__attribute__((used)) static void
audump_user(void)
{
 au_user_ent_t *up;

 while ((up = getauuserent()) != ((void*)0)) {
  printf("%s:", up->au_name);

  printf(":");

  printf("\n");
 }
}
