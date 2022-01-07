
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ item_index; } ;
typedef TYPE_1__ rep_stats_t ;
typedef scalar_t__ apr_uint64_t ;



__attribute__((used)) static int
compare_representation_item_index(const void *data, const void *key)
{
  apr_uint64_t lhs = (*(const rep_stats_t *const *)data)->item_index;
  apr_uint64_t rhs = *(const apr_uint64_t *)key;

  if (lhs < rhs)
    return -1;
  return (lhs > rhs ? 1 : 0);
}
