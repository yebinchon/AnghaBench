
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct re_guts {scalar_t__ magic; char* must; int * setbits; int * sets; int * stripdata; int * strip; } ;
struct TYPE_3__ {scalar_t__ re_magic; struct re_guts* re_g; } ;
typedef TYPE_1__ regex_t ;


 scalar_t__ MAGIC1 ;
 scalar_t__ MAGIC2 ;
 int free (char*) ;

void
regfree(regex_t *preg)
{
 struct re_guts *g;

 if (preg->re_magic != MAGIC1)
  return;

 g = preg->re_g;
 if (g == ((void*)0) || g->magic != MAGIC2)
  return;
 preg->re_magic = 0;
 g->magic = 0;

 if (g->strip != ((void*)0))
  free((char *)g->strip);
 if (g->stripdata != ((void*)0))
  free((char *)g->stripdata);
 if (g->sets != ((void*)0))
  free((char *)g->sets);
 if (g->setbits != ((void*)0))
  free((char *)g->setbits);
 if (g->must != ((void*)0))
  free(g->must);
 free((char *)g);
}
