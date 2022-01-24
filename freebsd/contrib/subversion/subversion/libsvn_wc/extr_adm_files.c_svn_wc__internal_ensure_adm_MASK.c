#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_OBSTRUCTED_UPDATE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*) ; 
 char* FUNC10 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC15(svn_wc__db_t *db,
                            const char *local_abspath,
                            const char *url,
                            const char *repos_root_url,
                            const char *repos_uuid,
                            svn_revnum_t revision,
                            svn_depth_t depth,
                            apr_pool_t *scratch_pool)
{
  int format;
  const char *original_repos_relpath;
  const char *original_root_url;
  svn_boolean_t is_op_root;
  const char *repos_relpath = FUNC10(repos_root_url, url,
                                                    scratch_pool);
  svn_wc__db_status_t status;
  const char *db_repos_relpath, *db_repos_root_url, *db_repos_uuid;
  svn_revnum_t db_revision;

  FUNC1(FUNC5(local_abspath));
  FUNC1(url != NULL);
  FUNC1(repos_root_url != NULL);
  FUNC1(repos_uuid != NULL);
  FUNC1(repos_relpath != NULL);

  FUNC0(FUNC14(&format, db, local_abspath, TRUE,
                                    scratch_pool));

  /* Early out: we know we're not dealing with an existing wc, so
     just create one. */
  if (format == 0)
    return FUNC7(FUNC3(db, local_abspath,
                                    repos_relpath, repos_root_url, repos_uuid,
                                    revision, depth, scratch_pool));

  FUNC0(FUNC12(&status, NULL,
                               &db_revision, &db_repos_relpath,
                               &db_repos_root_url, &db_repos_uuid,
                               NULL, NULL, NULL, NULL, NULL, NULL,
                               &original_repos_relpath, &original_root_url,
                               NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, &is_op_root, NULL, NULL,
                               NULL, NULL, NULL,
                               db, local_abspath, scratch_pool, scratch_pool));

  /* When the directory exists and is scheduled for deletion or is not-present
   * do not check the revision or the URL.  The revision can be any
   * arbitrary revision and the URL may differ if the add is
   * being driven from a merge which will have a different URL. */
  if (status != svn_wc__db_status_deleted
      && status != svn_wc__db_status_not_present)
    {
      /* ### Should we match copyfrom_revision? */
      if (db_revision != revision)
        return
          FUNC6(SVN_ERR_WC_OBSTRUCTED_UPDATE, NULL,
                            FUNC2("Revision %ld doesn't match existing "
                              "revision %ld in '%s'"),
                            revision, db_revision, local_abspath);

      if (!db_repos_root_url)
        {
          if (status == svn_wc__db_status_added)
            FUNC0(FUNC13(NULL, NULL,
                                             &db_repos_relpath,
                                             &db_repos_root_url,
                                             &db_repos_uuid,
                                             NULL, NULL, NULL, NULL,
                                             db, local_abspath,
                                             scratch_pool, scratch_pool));
          else
            FUNC0(FUNC11(NULL, NULL, NULL,
                                             &db_repos_relpath,
                                             &db_repos_root_url,
                                             &db_repos_uuid, NULL, NULL, NULL,
                                             NULL, NULL, NULL, NULL, NULL,
                                             NULL, NULL,
                                             db, local_abspath,
                                             scratch_pool, scratch_pool));
        }

      /* The caller gives us a URL which should match the entry. However,
         some callers compensate for an old problem in entry->url and pass
         the copyfrom_url instead. See ^/notes/api-errata/1.7/wc002.txt. As
         a result, we allow the passed URL to match copyfrom_url if it
         does not match the entry's primary URL.  */
      if (FUNC4(db_repos_uuid, repos_uuid)
          || FUNC4(db_repos_root_url, repos_root_url)
          || !FUNC9(db_repos_relpath, repos_relpath))
        {
          if (!is_op_root /* copy_from was set on op-roots only */
              || original_root_url == NULL
              || FUNC4(original_root_url, repos_root_url)
              || FUNC4(original_repos_relpath, repos_relpath))
            return
              FUNC6(SVN_ERR_WC_OBSTRUCTED_UPDATE, NULL,
                                FUNC2("URL '%s' (uuid: '%s') doesn't match existing "
                                  "URL '%s' (uuid: '%s') in '%s'"),
                                url,
                                db_repos_uuid,
                                FUNC8(db_repos_root_url,
                                                            db_repos_relpath,
                                                            scratch_pool),
                                repos_uuid,
                                local_abspath);
        }
    }

  return SVN_NO_ERROR;
}