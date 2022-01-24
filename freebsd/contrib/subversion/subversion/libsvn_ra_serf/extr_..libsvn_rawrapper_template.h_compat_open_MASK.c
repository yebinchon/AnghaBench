#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * pool; TYPE_7__* vtable; } ;
typedef  TYPE_1__ svn_ra_session_t ;
struct TYPE_9__ {int /*<<< orphan*/ * auth_baton; int /*<<< orphan*/  invalidate_wc_props; int /*<<< orphan*/  push_wc_prop; int /*<<< orphan*/  set_wc_prop; int /*<<< orphan*/  get_wc_prop; int /*<<< orphan*/  open_tmp_file; } ;
typedef  TYPE_2__ svn_ra_callbacks_t ;
struct TYPE_10__ {int /*<<< orphan*/ * progress_baton; int /*<<< orphan*/ * progress_func; int /*<<< orphan*/  invalidate_wc_props; int /*<<< orphan*/  push_wc_prop; int /*<<< orphan*/  set_wc_prop; int /*<<< orphan*/  get_wc_prop; int /*<<< orphan*/ * auth_baton; int /*<<< orphan*/  open_tmp_file; } ;
typedef  TYPE_3__ svn_ra_callbacks2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* open_session ) (TYPE_1__*,char const**,char const*,TYPE_3__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_SESSION_URL_MISMATCH ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_7__ VTBL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const**,char const*,TYPE_3__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC8(void **session_baton,
                                const char *repos_URL,
                                const svn_ra_callbacks_t *callbacks,
                                void *callback_baton,
                                apr_hash_t *config,
                                apr_pool_t *pool)
{
  /* Here, we should be calling svn_ra_create_callbacks to initialize
   * the svn_ra_callbacks2_t structure.  However, doing that
   * introduces a circular dependancy between libsvn_ra and
   * libsvn_ra_{local,neon,serf,svn}, which include
   * wrapper_template.h.  In turn, circular dependancies break the
   * build on win32 (and possibly other systems).
   *
   * In order to avoid this happening at all, the code of
   * svn_ra_create_callbacks is duplicated here.  This is evil, but
   * the alternative (creating a new ra_util library) would be massive
   * overkill for the time being.  Just be sure to keep the following
   * line and the code of svn_ra_create_callbacks in sync.  */
  apr_pool_t *sesspool = FUNC6(pool);
  svn_ra_callbacks2_t *callbacks2 = FUNC2(sesspool,
                                                sizeof(*callbacks2));

  svn_ra_session_t *sess = FUNC2(sesspool, sizeof(*sess));
  const char *session_url;

  sess->vtable = &VTBL;
  sess->pool = sesspool;

  callbacks2->open_tmp_file = callbacks->open_tmp_file;
  callbacks2->auth_baton = callbacks->auth_baton;
  callbacks2->get_wc_prop = callbacks->get_wc_prop;
  callbacks2->set_wc_prop = callbacks->set_wc_prop;
  callbacks2->push_wc_prop = callbacks->push_wc_prop;
  callbacks2->invalidate_wc_props = callbacks->invalidate_wc_props;
  callbacks2->progress_func = NULL;
  callbacks2->progress_baton = NULL;

  FUNC0(VTBL.open_session(sess, &session_url, repos_URL,
                            callbacks2, callback_baton,
                            callbacks ? callbacks->auth_baton : NULL,
                            config, sesspool, sesspool));

  if (FUNC3(repos_URL, session_url) != 0)
    {
      FUNC7(sesspool);
      return FUNC5(SVN_ERR_RA_SESSION_URL_MISMATCH, NULL,
                               FUNC1("Session URL '%s' does not match requested "
                                 " URL '%s', and redirection was disallowed."),
                               session_url, repos_URL);
    }

  *session_baton = sess;
  return SVN_NO_ERROR;
}