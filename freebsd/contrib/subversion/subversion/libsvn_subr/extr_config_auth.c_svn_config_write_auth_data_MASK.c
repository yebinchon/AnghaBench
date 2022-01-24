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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_CONFIG_REALMSTRING_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_NO_AUTH_FILE_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_HASH_TERMINATOR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_on_pool_cleanup ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC14(apr_hash_t *hash,
                           const char *cred_kind,
                           const char *realmstring,
                           const char *config_dir,
                           apr_pool_t *pool)
{
  svn_stream_t *stream;
  const char *auth_path, *tmp_path;

  FUNC0(FUNC4(&auth_path, cred_kind, realmstring, config_dir,
                              pool));
  if (! auth_path)
    return FUNC7(SVN_ERR_NO_AUTH_FILE_PATH, NULL,
                            FUNC2("Unable to locate auth file"));

  /* Add the realmstring to the hash, so programs (or users) can
     verify exactly which set of credentials this file holds.
     ### What if realmstring key is already in the hash? */
  FUNC8(hash, SVN_CONFIG_REALMSTRING_KEY,
                FUNC13(realmstring, pool));

  FUNC1(FUNC12(&stream, &tmp_path,
                                   FUNC5(auth_path, pool),
                                   svn_io_file_del_on_pool_cleanup,
                                   pool, pool),
            FUNC2("Unable to open auth file for writing"));
  FUNC1(FUNC9(hash, stream, SVN_HASH_TERMINATOR, pool),
            FUNC3(pool, FUNC2("Error writing hash to '%s'"),
                         FUNC6(auth_path, pool)));
  FUNC0(FUNC11(stream));
  FUNC0(FUNC10(tmp_path, auth_path, FALSE, pool));

  /* To be nice, remove the realmstring from the hash again, just in
     case the caller wants their hash unchanged.
     ### Should we also do this when a write error occurs? */
  FUNC8(hash, SVN_CONFIG_REALMSTRING_KEY, NULL);

  return SVN_NO_ERROR;
}