
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct callout {int flags; struct mtx* mtx; } ;


 int CALLOUT_RETURNUNLOCKED ;
 struct mtx Giant ;
 int memset (struct callout*,int ,int) ;

void
callout_init_mtx(struct callout *c, struct mtx *mtx, int flags)
{
 memset(c, 0, sizeof(*c));

 if (mtx == ((void*)0))
  mtx = &Giant;

 c->mtx = mtx;
 c->flags = (flags & CALLOUT_RETURNUNLOCKED);
}
