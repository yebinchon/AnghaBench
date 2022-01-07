
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int escape_t ;
typedef int _HZEncodingInfo ;


 int E0SET (int *) ;
 int E1SET (int *) ;
 int * GL (int *) ;
 int * GR (int *) ;
 int * TAILQ_FIRST (int ) ;
 int TAILQ_REMOVE (int ,int *,int ) ;
 int entry ;
 int free (int *) ;

__attribute__((used)) static void
_citrus_HZ_encoding_module_uninit(_HZEncodingInfo *ei)
{
 escape_t *escape;

 while ((escape = TAILQ_FIRST(E0SET(ei))) != ((void*)0)) {
  TAILQ_REMOVE(E0SET(ei), escape, entry);
  free(GL(escape));
  free(GR(escape));
  free(escape);
 }
 while ((escape = TAILQ_FIRST(E1SET(ei))) != ((void*)0)) {
  TAILQ_REMOVE(E1SET(ei), escape, entry);
  free(GL(escape));
  free(GR(escape));
  free(escape);
 }
}
