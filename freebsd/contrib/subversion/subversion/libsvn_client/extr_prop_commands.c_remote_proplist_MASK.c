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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_proplist_receiver2_t ;
typedef  scalar_t__ svn_prop_kind_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_dirent_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int /*<<< orphan*/ * (* svn_cancel_func_t ) (void*) ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SVN_DIRENT_KIND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_NODE_UNKNOWN_KIND ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_depth_empty ; 
 scalar_t__ svn_depth_files ; 
 scalar_t__ svn_depth_immediates ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 char* FUNC12 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ svn_prop_regular_kind ; 
 scalar_t__ FUNC16 (char const*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 char* FUNC21 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC22(const char *target_prefix,
                const char *target_relative,
                svn_node_kind_t kind,
                svn_revnum_t revnum,
                svn_ra_session_t *ra_session,
                svn_boolean_t get_explicit_props,
                svn_boolean_t get_target_inherited_props,
                svn_depth_t depth,
                svn_proplist_receiver2_t receiver,
                void *receiver_baton,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  apr_hash_t *dirents;
  apr_hash_t *prop_hash = NULL;
  apr_hash_index_t *hi;
  const char *target_full_url =
    FUNC12(target_prefix, target_relative, scratch_pool);
  apr_array_header_t *inherited_props;

  /* Note that we pass only the SCRATCH_POOL to svn_ra_get[dir*|file*] because
     we'll be filtering out non-regular properties from PROP_HASH before we
     return. */
  if (kind == svn_node_dir)
    {
      FUNC0(FUNC17(ra_session,
                              (depth > svn_depth_empty) ? &dirents : NULL,
                              NULL, &prop_hash, target_relative, revnum,
                              SVN_DIRENT_KIND, scratch_pool));
    }
  else if (kind == svn_node_file)
    {
      FUNC0(FUNC18(ra_session, target_relative, revnum,
                              NULL, NULL, &prop_hash, scratch_pool));
    }
  else
    {
      return FUNC11(SVN_ERR_NODE_UNKNOWN_KIND, NULL,
                               FUNC1("Unknown node kind for '%s'"),
                               target_full_url);
    }

  if (get_target_inherited_props)
    {
      const char *repos_root_url;

      FUNC0(FUNC19(ra_session, &inherited_props,
                                         target_relative, revnum,
                                         scratch_pool, scratch_pool));
      FUNC0(FUNC20(ra_session, &repos_root_url,
                                     scratch_pool));
      FUNC0(FUNC10(inherited_props,
                                                 repos_root_url,
                                                 scratch_pool,
                                                 scratch_pool));
    }
  else
    {
      inherited_props = NULL;
    }

  if (!get_explicit_props)
    prop_hash = NULL;
  else
    {
      /* Filter out non-regular properties, since the RA layer returns all
         kinds.  Copy regular properties keys/vals from the prop_hash
         allocated in SCRATCH_POOL to the "final" hash allocated in
         RESULT_POOL. */
      for (hi = FUNC3(scratch_pool, prop_hash);
           hi;
           hi = FUNC4(hi))
        {
          const char *name = FUNC6(hi);
          apr_ssize_t klen = FUNC7(hi);
          svn_prop_kind_t prop_kind;

          prop_kind = FUNC16(name);

          if (prop_kind != svn_prop_regular_kind)
            {
              FUNC5(prop_hash, name, klen, NULL);
            }
        }
    }

  FUNC0(FUNC9(target_full_url, prop_hash, inherited_props,
                        receiver, receiver_baton, scratch_pool));

  if (depth > svn_depth_empty
      && get_explicit_props
      && (kind == svn_node_dir) && (FUNC2(dirents) > 0))
    {
      apr_pool_t *iterpool = FUNC14(scratch_pool);

      for (hi = FUNC3(scratch_pool, dirents);
           hi;
           hi = FUNC4(hi))
        {
          const char *this_name = FUNC6(hi);
          svn_dirent_t *this_ent = FUNC8(hi);
          const char *new_target_relative;

          if (cancel_func)
            FUNC0(cancel_func(cancel_baton));

          FUNC13(iterpool);

          new_target_relative = FUNC21(target_relative,
                                                 this_name, iterpool);

          if (this_ent->kind == svn_node_file
              || depth > svn_depth_files)
            {
              svn_depth_t depth_below_here = depth;

              if (depth == svn_depth_immediates)
                depth_below_here = svn_depth_empty;

              FUNC0(FUNC22(target_prefix,
                                      new_target_relative,
                                      this_ent->kind,
                                      revnum,
                                      ra_session,
                                      TRUE /* get_explicit_props */,
                                      FALSE /* get_target_inherited_props */,
                                      depth_below_here,
                                      receiver, receiver_baton,
                                      cancel_func, cancel_baton,
                                      iterpool));
            }
        }

      FUNC15(iterpool);
    }

  return SVN_NO_ERROR;
}