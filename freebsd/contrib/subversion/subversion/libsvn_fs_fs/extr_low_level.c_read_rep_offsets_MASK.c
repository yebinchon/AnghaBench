#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {scalar_t__ revision; int /*<<< orphan*/  txn_id; } ;
typedef  TYPE_2__ representation_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(representation_t **rep_p,
                 char *string,
                 const svn_fs_id_t *noderev_id,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_error_t *err
    = FUNC5(rep_p,
                                      FUNC6(string,
                                                                scratch_pool),
                                      result_pool,
                                      scratch_pool);
  if (err)
    {
      const svn_string_t *id_unparsed;
      const char *where;

      id_unparsed = FUNC4(noderev_id, scratch_pool);
      where = FUNC1(scratch_pool,
                           FUNC0("While reading representation offsets "
                             "for node-revision '%s':"),
                           noderev_id ? id_unparsed->data : "(null)");

      return FUNC2(err, where);
    }

  if ((*rep_p)->revision == SVN_INVALID_REVNUM)
    if (noderev_id)
      (*rep_p)->txn_id = *FUNC3(noderev_id);

  return SVN_NO_ERROR;
}