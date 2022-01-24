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
typedef  void* svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; int /*<<< orphan*/ * vtable; } ;
typedef  TYPE_1__ svn_fs_history_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/ * fs; int /*<<< orphan*/ * current_id; void* next_copy; void* rev_hint; int /*<<< orphan*/ * path_hint; int /*<<< orphan*/  is_interesting; void* revision; int /*<<< orphan*/ * path; } ;
typedef  TYPE_2__ fs_history_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  history_vtable ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_fs_history_t *
FUNC3(svn_fs_t *fs,
                 const char *path,
                 svn_revnum_t revision,
                 svn_boolean_t is_interesting,
                 const char *path_hint,
                 svn_revnum_t rev_hint,
                 svn_revnum_t next_copy,
                 const svn_fs_id_t *current_id,
                 apr_pool_t *pool)
{
  svn_fs_history_t *history = FUNC0(pool, sizeof(*history));
  fs_history_data_t *fhd = FUNC0(pool, sizeof(*fhd));
  fhd->path = FUNC1(path, pool);
  fhd->revision = revision;
  fhd->is_interesting = is_interesting;
  fhd->path_hint = path_hint ? FUNC1(path_hint, pool)
                             : NULL;
  fhd->rev_hint = rev_hint;
  fhd->next_copy = next_copy;
  fhd->current_id = current_id ? FUNC2(current_id, pool) : NULL;
  fhd->fs = fs;

  history->vtable = &history_vtable;
  history->fsap_data = fhd;
  return history;
}