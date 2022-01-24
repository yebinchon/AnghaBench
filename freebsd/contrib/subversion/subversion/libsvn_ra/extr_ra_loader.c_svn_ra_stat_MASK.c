#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct TYPE_33__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_34__ {TYPE_1__* vtable; } ;
typedef  TYPE_3__ svn_ra_session_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_35__ {scalar_t__ apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
struct TYPE_36__ {int has_props; int /*<<< orphan*/ * last_author; int /*<<< orphan*/  time; int /*<<< orphan*/  created_rev; int /*<<< orphan*/  size; scalar_t__ kind; } ;
typedef  TYPE_5__ svn_dirent_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_32__ {TYPE_4__* (* stat ) (TYPE_3__*,char const*,int /*<<< orphan*/ ,TYPE_5__**,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_DIRENT_ALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  SVN_INVALID_FILESIZE ; 
 TYPE_4__* SVN_NO_ERROR ; 
 char const* SVN_PROP_REVISION_AUTHOR ; 
 char const* SVN_PROP_REVISION_DATE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 TYPE_4__* FUNC6 (TYPE_3__*,char const*,int /*<<< orphan*/ ,TYPE_5__**,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ svn_node_none ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 char* FUNC11 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC14 (TYPE_3__**,TYPE_3__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC15 (TYPE_3__*,char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC16 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC17 (TYPE_3__*,char const**,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC18 (TYPE_3__*,char const**,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC19 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 
 TYPE_4__* FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *FUNC23(svn_ra_session_t *session,
                         const char *path,
                         svn_revnum_t revision,
                         svn_dirent_t **dirent,
                         apr_pool_t *pool)
{
  svn_error_t *err;
  FUNC1(FUNC20(path));
  err = session->vtable->stat(session, path, revision, dirent, pool);

  /* svnserve before 1.2 doesn't support the above, so fall back on
     a far less efficient, but still correct method. */
  if (err && err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
    {
      /* ### TODO: Find out if we can somehow move this code in libsvn_ra_svn.
       */
      apr_pool_t *scratch_pool = FUNC13(pool);
      svn_node_kind_t kind;

      FUNC8(err);

      FUNC0(FUNC15(session, path, revision, &kind, scratch_pool));

      if (kind != svn_node_none)
        {
          const char *repos_root_url;
          const char *session_url;

          FUNC0(FUNC17(session, &repos_root_url,
                                         scratch_pool));
          FUNC0(FUNC18(session, &session_url,
                                         scratch_pool));

          if (!FUNC10(path))
            session_url = FUNC11(session_url, path,
                                                      scratch_pool);

          if (FUNC5(session_url, repos_root_url) != 0)
            {
              svn_ra_session_t *parent_session;
              apr_hash_t *parent_ents;
              const char *parent_url, *base_name;

              /* Open another session to the path's parent.  This server
                 doesn't support svn_ra_reparent anyway, so don't try it. */
              FUNC22(&parent_url, &base_name, session_url,
                            scratch_pool);

              FUNC0(FUNC14(&parent_session, session, parent_url,
                                          scratch_pool, scratch_pool));

              /* Get all parent's entries, no props. */
              FUNC0(FUNC16(parent_session, &parent_ents, NULL,
                                      NULL, "", revision, SVN_DIRENT_ALL,
                                      scratch_pool));

              /* Get the relevant entry. */
              *dirent = FUNC9(parent_ents, base_name);

              if (*dirent)
                *dirent = FUNC7(*dirent, pool);
            }
          else
            {
              apr_hash_t *props;
              const svn_string_t *val;

              /* We can't get the directory entry for the repository root,
                 but we can still get the information we want.
                 The created-rev of the repository root must, by definition,
                 be rev. */
              *dirent = FUNC3(pool, sizeof(**dirent));
              (*dirent)->kind = kind;
              (*dirent)->size = SVN_INVALID_FILESIZE;

              FUNC0(FUNC16(session, NULL, NULL, &props,
                                      "", revision, 0 /* no dirent fields */,
                                      scratch_pool));
              (*dirent)->has_props = (FUNC2(props) != 0);

              (*dirent)->created_rev = revision;

              FUNC0(FUNC19(session, revision, &props,
                                          scratch_pool));

              val = FUNC9(props, SVN_PROP_REVISION_DATE);
              if (val)
                FUNC0(FUNC21(&(*dirent)->time, val->data,
                                              scratch_pool));

              val = FUNC9(props, SVN_PROP_REVISION_AUTHOR);
              (*dirent)->last_author = val ? FUNC4(pool, val->data)
                                           : NULL;
            }
        }
      else
        *dirent = NULL;

      FUNC12(scratch_pool);
    }
  else
    FUNC0(err);

  return SVN_NO_ERROR;
}