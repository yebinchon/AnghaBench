
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {int value; int cv; int mtx; } ;


 int MTX_DEF ;
 int MTX_NOWITNESS ;
 int MTX_QUIET ;
 int bzero (struct semaphore*,int) ;
 int cv_init (int *,char*) ;
 int mtx_init (int *,char*,char*,int) ;

void
_sema_init(struct semaphore *s, int value)
{
 bzero(s, sizeof(*s));
 mtx_init(&s->mtx, "sema lock", "VCHIQ sepmaphore backing lock",
  MTX_DEF | MTX_NOWITNESS | MTX_QUIET);
 cv_init(&s->cv, "sema cv");
 s->value = value;
}
