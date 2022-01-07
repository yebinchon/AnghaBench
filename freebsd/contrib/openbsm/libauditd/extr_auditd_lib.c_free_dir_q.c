
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_ent {struct dir_ent* dirname; } ;


 struct dir_ent* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 struct dir_ent* TAILQ_NEXT (struct dir_ent*,int ) ;
 int dir_q ;
 int dirs ;
 int free (struct dir_ent*) ;

__attribute__((used)) static void
free_dir_q(void)
{
 struct dir_ent *d1, *d2;

 d1 = TAILQ_FIRST(&dir_q);
 while (d1 != ((void*)0)) {
  d2 = TAILQ_NEXT(d1, dirs);
  free(d1->dirname);
  free(d1);
  d1 = d2;
 }
 TAILQ_INIT(&dir_q);
}
