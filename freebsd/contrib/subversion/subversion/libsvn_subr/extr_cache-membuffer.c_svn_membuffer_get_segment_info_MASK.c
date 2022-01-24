#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ size; } ;
struct TYPE_12__ {scalar_t__ size; } ;
struct TYPE_15__ {int group_count; int /*<<< orphan*/ * directory; scalar_t__ used_entries; TYPE_2__ l2; TYPE_1__ l1; scalar_t__ data_used; } ;
typedef  TYPE_4__ svn_membuffer_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_16__ {int total_entries; int /*<<< orphan*/ * histogram; int /*<<< orphan*/  used_entries; int /*<<< orphan*/  total_size; int /*<<< orphan*/  used_size; int /*<<< orphan*/  data_size; } ;
typedef  TYPE_5__ svn_cache__info_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  entry_t ;
struct TYPE_14__ {int /*<<< orphan*/  used; } ;
struct TYPE_17__ {TYPE_3__ header; } ;
typedef  TYPE_6__ entry_group_t ;
typedef  size_t apr_uint32_t ;
typedef  size_t apr_size_t ;

/* Variables and functions */
 int GROUP_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (TYPE_4__*,size_t) ; 
 TYPE_6__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_membuffer_t *segment,
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
      if (FUNC1(segment, i))
        {
          entry_group_t *chain_end
            = FUNC2(segment, &segment->directory[i]);
          apr_size_t use
            = FUNC0(chain_end->header.used,
                  sizeof(info->histogram) / sizeof(info->histogram[0]) - 1);
          info->histogram[use]++;
        }

  return SVN_NO_ERROR;
}