
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* t_data; } ;
typedef TYPE_1__ token_t ;


 int free (TYPE_1__*) ;

void
au_free_token(token_t *tok)
{

 if (tok != ((void*)0)) {
  if (tok->t_data)
   free(tok->t_data);
  free(tok);
 }
}
