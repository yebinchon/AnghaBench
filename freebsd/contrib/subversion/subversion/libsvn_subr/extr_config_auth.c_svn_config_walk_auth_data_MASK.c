#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_22__ {scalar_t__ kind; } ;
typedef  TYPE_2__ svn_io_dirent2_t ;
struct TYPE_23__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  TYPE_3__* (* svn_config_auth_walk_func_t ) (scalar_t__*,void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FALSE ; 
 char const* SVN_AUTH_CRED_SIMPLE ; 
 char const* SVN_AUTH_CRED_SSL_CLIENT_CERT ; 
 char const* SVN_AUTH_CRED_SSL_CLIENT_CERT_PW ; 
 char const* SVN_AUTH_CRED_SSL_SERVER_TRUST ; 
 char const* SVN_AUTH_CRED_USERNAME ; 
 int /*<<< orphan*/  SVN_CONFIG_REALMSTRING_KEY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ SVN_ERR_CEASE_INVOCATION ; 
 int /*<<< orphan*/  SVN_HASH_TERMINATOR ; 
 TYPE_3__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (char const**,char const*,char*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_3__* FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (TYPE_3__*) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC16 (int /*<<< orphan*/ **,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC17 (char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC22 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC23(const char *config_dir,
                          svn_config_auth_walk_func_t walk_func,
                          void *walk_baton,
                          apr_pool_t *scratch_pool)
{
  int i;
  apr_pool_t *iterpool;
  svn_boolean_t finished = FALSE;
  const char *cred_kinds[] =
    {
      SVN_AUTH_CRED_SIMPLE,
      SVN_AUTH_CRED_USERNAME,
      SVN_AUTH_CRED_SSL_CLIENT_CERT,
      SVN_AUTH_CRED_SSL_CLIENT_CERT_PW,
      SVN_AUTH_CRED_SSL_SERVER_TRUST,
      NULL
    };

  iterpool = FUNC19(scratch_pool);
  for (i = 0; cred_kinds[i]; i++)
    {
      const char *item_path;
      const char *dir_path;
      apr_hash_t *nodes;
      svn_error_t *err;
      apr_pool_t *itempool;
      apr_hash_index_t *hi;

      FUNC18(iterpool);

      if (finished)
        break;

      FUNC1(FUNC8(&item_path, cred_kinds[i], "!", config_dir,
                                  iterpool));

      dir_path = FUNC9(item_path, iterpool);

      err = FUNC16(&nodes, dir_path, TRUE, iterpool, iterpool);
      if (err)
        {
          if (!FUNC0(err->apr_err)
              && !FUNC2(err->apr_err))
            return FUNC13(err);

          FUNC11(err);
          continue;
        }

      itempool = FUNC19(iterpool);
      for (hi = FUNC3(iterpool, nodes); hi; hi = FUNC5(hi))
        {
          svn_io_dirent2_t *dirent = FUNC7(hi);
          svn_stream_t *stream;
          apr_hash_t *creds_hash;
          const svn_string_t *realm;
          svn_boolean_t delete_file = FALSE;

          if (finished)
            break;

          if (dirent->kind != svn_node_file)
            continue;

          FUNC18(itempool);

          item_path = FUNC10(dir_path, FUNC6(hi),
                                      itempool);

          err = FUNC22(&stream, item_path,
                                         itempool, itempool);
          if (err)
            {
              /* Ignore this file. There are no credentials in it anyway */
              FUNC11(err);
              continue;
            }

          creds_hash = FUNC4(itempool);
          err = FUNC15(creds_hash, stream,
                               SVN_HASH_TERMINATOR, itempool);
          err = FUNC12(err, FUNC21(stream));
          if (err)
            {
              /* Ignore this file. There are no credentials in it anyway */
              FUNC11(err);
              continue;
            }

          realm = FUNC14(creds_hash, SVN_CONFIG_REALMSTRING_KEY);
          if (! realm)
            continue; /* Not an auth file */

          err = walk_func(&delete_file, walk_baton, cred_kinds[i],
                          realm->data, creds_hash, itempool);
          if (err && err->apr_err == SVN_ERR_CEASE_INVOCATION)
            {
              FUNC11(err);
              err = SVN_NO_ERROR;
              finished = TRUE;
            }
          FUNC1(err);

          if (delete_file)
            {
              /* Delete the file on disk */
              FUNC1(FUNC17(item_path, TRUE, itempool));
            }
        }
    }

  FUNC20(iterpool);
  return SVN_NO_ERROR;
}