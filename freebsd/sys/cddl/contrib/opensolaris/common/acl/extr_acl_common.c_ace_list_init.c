
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dfacl_flag; scalar_t__ seen; int state; scalar_t__ hasmask; scalar_t__ acl_mask; scalar_t__ numgroups; scalar_t__ numusers; int other_obj; int group_obj; int user_obj; } ;
typedef TYPE_1__ ace_list_t ;


 int ace_unused ;
 int acevals_init (int *,int ) ;

__attribute__((used)) static void
ace_list_init(ace_list_t *al, int dfacl_flag)
{
 acevals_init(&al->user_obj, 0);
 acevals_init(&al->group_obj, 0);
 acevals_init(&al->other_obj, 0);
 al->numusers = 0;
 al->numgroups = 0;
 al->acl_mask = 0;
 al->hasmask = 0;
 al->state = ace_unused;
 al->seen = 0;
 al->dfacl_flag = dfacl_flag;
}
