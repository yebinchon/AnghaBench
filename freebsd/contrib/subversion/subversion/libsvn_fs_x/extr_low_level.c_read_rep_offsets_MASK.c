#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_fs_x__representation_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_fs_x__representation_t **rep_p,
                 char *string,
                 const svn_fs_x__id_t *noderev_id,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_error_t *err
    = FUNC4(rep_p,
                                     FUNC5(string,
                                                               scratch_pool),
                                     result_pool,
                                     scratch_pool);
  if (err)
    {
      const svn_string_t *id_unparsed;
      const char *where;

      id_unparsed = FUNC3(noderev_id, scratch_pool);
      where = FUNC1(scratch_pool,
                           FUNC0("While reading representation offsets "
                             "for node-revision '%s':"),
                           id_unparsed->data);

      return FUNC2(err, where);
    }

  return SVN_NO_ERROR;
}