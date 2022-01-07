
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* directory; } ;
typedef TYPE_2__ svn_membuffer_t ;
struct TYPE_7__ {size_t next; } ;
struct TYPE_9__ {TYPE_1__ header; } ;
typedef TYPE_3__ entry_group_t ;


 size_t NO_INDEX ;

__attribute__((used)) static entry_group_t *
last_group_in_chain(svn_membuffer_t *cache,
                    entry_group_t *group)
{
  while (group->header.next != NO_INDEX)
    group = &cache->directory[group->header.next];

  return group;
}
