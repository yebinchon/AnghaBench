
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ we_wordc; scalar_t__ we_nbytes; int * we_strings; int * we_wordv; } ;
typedef TYPE_1__ wordexp_t ;


 int free (int *) ;

void
wordfree(wordexp_t *we)
{

 if (we == ((void*)0))
  return;
 free(we->we_wordv);
 free(we->we_strings);
 we->we_wordv = ((void*)0);
 we->we_strings = ((void*)0);
 we->we_nbytes = 0;
 we->we_wordc = 0;
}
