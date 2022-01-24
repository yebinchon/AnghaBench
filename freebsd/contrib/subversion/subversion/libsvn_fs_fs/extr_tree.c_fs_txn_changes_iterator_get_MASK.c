#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_path_change_iterator_t ;
typedef  int /*<<< orphan*/  svn_fs_path_change3_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {scalar_t__ hi; int /*<<< orphan*/  change; } ;
typedef  TYPE_2__ fs_txn_changes_iterator_data_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_fs_path_change3_t **change,
                            svn_fs_path_change_iterator_t *iterator)
{
  fs_txn_changes_iterator_data_t *data = iterator->fsap_data;

  if (data->hi)
    {
      const void *key;
      apr_ssize_t length;
      void *value;
      FUNC1(data->hi, &key, &length, &value);

      FUNC2(&data->change, key, length, value);

      *change = &data->change;
      data->hi = FUNC0(data->hi);
    }
  else
    {
      *change = NULL;
    }

  return SVN_NO_ERROR;
}