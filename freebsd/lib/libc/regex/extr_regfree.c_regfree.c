
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct re_guts {scalar_t__ magic; unsigned int ncsets; char* must; char* charjump; char* matchjump; TYPE_1__* sets; int * strip; } ;
struct TYPE_5__ {scalar_t__ re_magic; struct re_guts* re_g; } ;
typedef TYPE_2__ regex_t ;
struct TYPE_4__ {char* ranges; char* wides; char* types; } ;


 size_t CHAR_MIN ;
 scalar_t__ MAGIC1 ;
 scalar_t__ MAGIC2 ;
 int free (char*) ;

void
regfree(regex_t *preg)
{
 struct re_guts *g;
 unsigned int i;

 if (preg->re_magic != MAGIC1)
  return;

 g = preg->re_g;
 if (g == ((void*)0) || g->magic != MAGIC2)
  return;
 preg->re_magic = 0;
 g->magic = 0;

 if (g->strip != ((void*)0))
  free((char *)g->strip);
 if (g->sets != ((void*)0)) {
  for (i = 0; i < g->ncsets; i++) {
   free(g->sets[i].ranges);
   free(g->sets[i].wides);
   free(g->sets[i].types);
  }
  free((char *)g->sets);
 }
 if (g->must != ((void*)0))
  free(g->must);
 if (g->charjump != ((void*)0))
  free(&g->charjump[CHAR_MIN]);
 if (g->matchjump != ((void*)0))
  free(g->matchjump);
 free((char *)g);
}
