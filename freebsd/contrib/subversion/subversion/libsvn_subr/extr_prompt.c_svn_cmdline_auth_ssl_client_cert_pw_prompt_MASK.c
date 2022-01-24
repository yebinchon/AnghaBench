#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cmdline_prompt_baton2_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_4__ {char const* password; int /*<<< orphan*/  may_save; } ;
typedef  TYPE_1__ svn_auth_cred_ssl_client_cert_pw_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5
  (svn_auth_cred_ssl_client_cert_pw_t **cred_p,
   void *baton,
   const char *realm,
   svn_boolean_t may_save,
   apr_pool_t *pool)
{
  svn_auth_cred_ssl_client_cert_pw_t *cred = NULL;
  const char *result;
  const char *text = FUNC3(pool, FUNC1("Passphrase for '%s': "), realm);
  svn_cmdline_prompt_baton2_t *pb = baton;

  FUNC0(FUNC4(&result, text, TRUE, pb, pool));

  cred = FUNC2(pool, sizeof(*cred));
  cred->password = result;
  cred->may_save = may_save;
  *cred_p = cred;

  return SVN_NO_ERROR;
}