
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int guid; } ;
typedef TYPE_1__ guid_map_entry_t ;


 int AVL_CMP (int ,int ) ;

__attribute__((used)) static int
guid_compare(const void *arg1, const void *arg2)
{
 const guid_map_entry_t *gmep1 = (const guid_map_entry_t *)arg1;
 const guid_map_entry_t *gmep2 = (const guid_map_entry_t *)arg2;

 return (AVL_CMP(gmep1->guid, gmep2->guid));
}
