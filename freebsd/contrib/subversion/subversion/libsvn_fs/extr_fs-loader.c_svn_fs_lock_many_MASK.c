#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_fs_t ;
struct TYPE_10__ {char* token; } ;
typedef  TYPE_3__ svn_fs_lock_target_t ;
typedef  int /*<<< orphan*/ * (* svn_fs_lock_callback_t ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_8__ {int /*<<< orphan*/ * (* lock ) (TYPE_2__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ * (*) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *),void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_BAD_LOCK_TOKEN ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/  SVN_ERR_XML_UNESCAPABLE_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ * (*) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *),void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const) ; 
 scalar_t__ FUNC11 (char const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC18 (char const*,int) ; 

svn_error_t *
FUNC19(svn_fs_t *fs,
                 apr_hash_t *targets,
                 const char *comment,
                 svn_boolean_t is_dav_comment,
                 apr_time_t expiration_date,
                 svn_boolean_t steal_lock,
                 svn_fs_lock_callback_t lock_callback,
                 void *lock_baton,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  apr_hash_t *ok_targets = FUNC3(scratch_pool);
  svn_error_t *err, *cb_err = SVN_NO_ERROR;

  /* Enforce that the comment be xml-escapable. */
  if (comment)
    if (! FUNC18(comment, FUNC7(comment)))
      return FUNC14(SVN_ERR_XML_UNESCAPABLE_DATA, NULL,
                              FUNC0("Lock comment contains illegal characters"));

  if (expiration_date < 0)
    return FUNC14(SVN_ERR_INCORRECT_PARAMS, NULL,
              FUNC0("Negative expiration date passed to svn_fs_lock"));

  /* Enforce that the token be an XML-safe URI. */
  for (hi = FUNC2(scratch_pool, targets); hi; hi = FUNC4(hi))
    {
      const svn_fs_lock_target_t *target = FUNC6(hi);

      err = SVN_NO_ERROR;
      if (target->token)
        {
          const char *c;


          if (FUNC8(target->token, "opaquelocktoken:", 16))
            err = FUNC15(SVN_ERR_FS_BAD_LOCK_TOKEN, NULL,
                                    FUNC0("Lock token URI '%s' has bad scheme; "
                                      "expected '%s'"),
                                    target->token, "opaquelocktoken");

          if (!err)
            {
              for (c = target->token; *c && !err; c++)
                if (! FUNC10(*c) || FUNC11(*c))
                  err = FUNC15(
                          SVN_ERR_FS_BAD_LOCK_TOKEN, NULL,
                          FUNC0("Lock token '%s' is not ASCII or is a "
                            "control character at byte %u"),
                          target->token,
                          (unsigned)(c - target->token));

              /* strlen(token) == c - token. */
              if (!err && !FUNC18(target->token,
                                               c - target->token))
                err = FUNC15(
                            SVN_ERR_FS_BAD_LOCK_TOKEN, NULL,
                            FUNC0("Lock token URI '%s' is not XML-safe"),
                            target->token);
            }
        }

      if (err)
        {
          if (!cb_err && lock_callback)
            cb_err = lock_callback(lock_baton, FUNC5(hi),
                                   NULL, err, scratch_pool);
          FUNC12(err);
        }
      else
        FUNC17(ok_targets, FUNC5(hi), target);
    }

  if (!FUNC1(ok_targets))
    return FUNC16(cb_err);

  err = fs->vtable->lock(fs, ok_targets, comment, is_dav_comment,
                         expiration_date, steal_lock,
                         lock_callback, lock_baton,
                         result_pool, scratch_pool);

  if (err && cb_err)
    FUNC13(err, cb_err);
  else if (!err)
    err = cb_err;

  return FUNC16(err);
}