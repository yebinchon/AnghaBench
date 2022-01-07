
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ size; } ;
struct TYPE_12__ {scalar_t__ size; } ;
struct TYPE_15__ {int group_count; int * directory; scalar_t__ used_entries; TYPE_2__ l2; TYPE_1__ l1; scalar_t__ data_used; } ;
typedef TYPE_4__ svn_membuffer_t ;
typedef int svn_error_t ;
struct TYPE_16__ {int total_entries; int * histogram; int used_entries; int total_size; int used_size; int data_size; } ;
typedef TYPE_5__ svn_cache__info_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int entry_t ;
struct TYPE_14__ {int used; } ;
struct TYPE_17__ {TYPE_3__ header; } ;
typedef TYPE_6__ entry_group_t ;
typedef size_t apr_uint32_t ;
typedef size_t apr_size_t ;


 int GROUP_SIZE ;
 size_t MIN (int ,int) ;
 int * SVN_NO_ERROR ;
 scalar_t__ is_group_initialized (TYPE_4__*,size_t) ;
 TYPE_6__* last_group_in_chain (TYPE_4__*,int *) ;

__attribute__((used)) static svn_error_t *
svn_membuffer_get_segment_info(svn_membuffer_t *segment,
                               svn_cache__info_t *info,
                               svn_boolean_t include_histogram)
{
  apr_uint32_t i;

  info->data_size += segment->l1.size + segment->l2.size;
  info->used_size += segment->data_used;
  info->total_size += segment->l1.size + segment->l2.size +
      segment->group_count * GROUP_SIZE * sizeof(entry_t);

  info->used_entries += segment->used_entries;
  info->total_entries += segment->group_count * GROUP_SIZE;

  if (include_histogram)
    for (i = 0; i < segment->group_count; ++i)
      if (is_group_initialized(segment, i))
        {
          entry_group_t *chain_end
            = last_group_in_chain(segment, &segment->directory[i]);
          apr_size_t use
            = MIN(chain_end->header.used,
                  sizeof(info->histogram) / sizeof(info->histogram[0]) - 1);
          info->histogram[use]++;
        }

  return SVN_NO_ERROR;
}
