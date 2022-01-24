#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_LOCKED ; 
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (scalar_t__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ **,char const*,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 char* FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (char const**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 TYPE_1__* FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (char const*) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC22(svn_wc_adm_access_t **anchor_access,
            svn_wc_adm_access_t **target_access,
            const char **target,
            svn_wc__db_t *db,
            svn_boolean_t db_provided,
            const char *path,
            svn_boolean_t write_lock,
            int levels_to_lock,
            svn_cancel_func_t cancel_func,
            void *cancel_baton,
            apr_pool_t *pool)
{
  const char *base_name = FUNC11(path, pool);

  /* Any baton creation is going to need a shared structure for holding
     data across the entire set. The caller isn't providing one, so we
     do it here.  */
  /* ### we could maybe skip the shared struct for levels_to_lock==0, but
     ### given that we need DB for format detection, may as well keep this.
     ### in any case, much of this is going to be simplified soon anyways.  */
  if (!db_provided)
    FUNC2(FUNC18(&db, NULL, /* ### config. need! */ FALSE, TRUE,
                            pool, pool));

  if (FUNC17(path)
      || FUNC14(path, FUNC10(path))
      || ! FUNC9(base_name, ".."))
    {
      FUNC2(FUNC7(anchor_access, path, db, db_provided,
                       write_lock, levels_to_lock,
                       cancel_func, cancel_baton, pool));
      *target_access = *anchor_access;
      *target = "";
    }
  else
    {
      svn_error_t *err;
      svn_wc_adm_access_t *p_access = NULL;
      svn_wc_adm_access_t *t_access = NULL;
      const char *parent = FUNC12(path, pool);
      const char *local_abspath;
      svn_error_t *p_access_err = SVN_NO_ERROR;

      FUNC2(FUNC13(&local_abspath, path, pool));

      /* Try to open parent of PATH to setup P_ACCESS */
      err = FUNC8(&p_access, parent, write_lock, db, db_provided,
                        pool, pool);
      if (err)
        {
          const char *abspath = FUNC12(local_abspath, pool);
          svn_wc_adm_access_t *existing_adm = FUNC20(db, abspath, pool);

          if (FUNC1(existing_adm))
            FUNC19(db, abspath, pool);
          else
            FUNC3(existing_adm == NULL);

          if (err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY)
            {
              FUNC15(err);
              p_access = NULL;
            }
          else if (write_lock && (err->apr_err == SVN_ERR_WC_LOCKED
                                  || FUNC0(err->apr_err)))
            {
              /* If P_ACCESS isn't to be returned then a read-only baton
                 will do for now, but keep the error in case we need it. */
              svn_error_t *err2 = FUNC8(&p_access, parent, FALSE,
                                              db, db_provided, pool, pool);
              if (err2)
                {
                  FUNC15(err2);
                  return err;
                }
              p_access_err = err;
            }
          else
            return err;
        }

      /* Try to open PATH to setup T_ACCESS */
      err = FUNC7(&t_access, path, db, db_provided, write_lock,
                     levels_to_lock, cancel_func, cancel_baton, pool);
      if (err)
        {
          if (p_access == NULL)
            {
              /* Couldn't open the parent or the target. Bail out.  */
              FUNC15(p_access_err);
              return FUNC16(err);
            }

          if (err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY)
            {
              if (p_access)
                FUNC15(FUNC21(p_access, pool));
              FUNC15(p_access_err);
              return FUNC16(err);
            }

          /* This directory is not under version control. Ignore it.  */
          FUNC15(err);
          t_access = NULL;
        }

      /* At this stage might have P_ACCESS, T_ACCESS or both */

      /* Check for switched or disjoint P_ACCESS and T_ACCESS */
      if (p_access && t_access)
        {
          svn_boolean_t disjoint;

          err = FUNC5(&disjoint, db, local_abspath, pool);
          if (err)
            {
              FUNC15(p_access_err);
              FUNC15(FUNC21(p_access, pool));
              FUNC15(FUNC21(t_access, pool));
              return FUNC16(err);
            }

          if (disjoint)
            {
              /* Switched or disjoint, so drop P_ACCESS. Don't close any
                 descendants, or we might blast the child.  */
              err = FUNC6(p_access, FALSE /* preserve_lock */, pool);
              if (err)
                {
                  FUNC15(p_access_err);
                  FUNC15(FUNC21(t_access, pool));
                  return FUNC16(err);
                }
              p_access = NULL;
            }
        }

      /* We have a parent baton *and* we have an error related to opening
         the baton. That means we have a readonly baton, but that isn't
         going to work for us. (p_access would have been set to NULL if
         a writable parent baton is not required)  */
      if (p_access && p_access_err)
        {
          if (t_access)
            FUNC15(FUNC21(t_access, pool));
          FUNC15(FUNC21(p_access, pool));
          return FUNC16(p_access_err);
        }
      FUNC15(p_access_err);

      if (! t_access)
        {
          svn_boolean_t available;
          svn_node_kind_t kind;

          err = FUNC4(&available, &kind, db, local_abspath, pool);

          if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
            FUNC15(err);
          else if (err)
            {
              FUNC15(FUNC21(p_access, pool));
              return FUNC16(err);
            }
        }

      *anchor_access = p_access ? p_access : t_access;
      *target_access = t_access ? t_access : p_access;

      if (! p_access)
        *target = "";
      else
        *target = base_name;
    }

  return SVN_NO_ERROR;
}