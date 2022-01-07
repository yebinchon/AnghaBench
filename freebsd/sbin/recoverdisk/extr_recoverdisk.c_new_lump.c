
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lump {int state; void* len; void* start; } ;
typedef void* off_t ;


 int TAILQ_INSERT_TAIL (int *,struct lump*,int ) ;
 int err (int,char*) ;
 int list ;
 int lumps ;
 struct lump* malloc (int) ;

__attribute__((used)) static void
new_lump(off_t start, off_t len, int state)
{
 struct lump *lp;

 lp = malloc(sizeof *lp);
 if (lp == ((void*)0))
  err(1, "Malloc failed");
 lp->start = start;
 lp->len = len;
 lp->state = state;
 TAILQ_INSERT_TAIL(&lumps, lp, list);
}
