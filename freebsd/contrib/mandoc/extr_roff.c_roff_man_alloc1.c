
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int macroset; TYPE_2__* first; } ;
struct roff_man {TYPE_1__ meta; } ;
struct TYPE_4__ {int type; } ;


 int MACROSET_NONE ;
 int ROFFT_ROOT ;
 TYPE_2__* mandoc_calloc (int,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int roff_state_reset (struct roff_man*) ;

__attribute__((used)) static void
roff_man_alloc1(struct roff_man *man)
{
 memset(&man->meta, 0, sizeof(man->meta));
 man->meta.first = mandoc_calloc(1, sizeof(*man->meta.first));
 man->meta.first->type = ROFFT_ROOT;
 man->meta.macroset = MACROSET_NONE;
 roff_state_reset(man);
}
