
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEXTH ;
typedef int TEXT ;


 int * TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int q ;
 int text_free (int *) ;

void
text_lfree(TEXTH *headp)
{
 TEXT *tp;

 while ((tp = TAILQ_FIRST(headp)) != ((void*)0)) {
  TAILQ_REMOVE(headp, tp, q);
  text_free(tp);
 }
}
