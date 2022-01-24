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
struct TYPE_4__ {char const* cert_file; int /*<<< orphan*/  may_save; } ;
typedef  TYPE_1__ svn_auth_cred_ssl_client_cert_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6
  (svn_auth_cred_ssl_client_cert_t **cred_p,
   void *baton,
   const char *realm,
   svn_boolean_t may_save,
   apr_pool_t *pool)
{
  svn_auth_cred_ssl_client_cert_t *cred = NULL;
  const char *cert_file = NULL;
  const char *abs_cert_file = NULL;
  svn_cmdline_prompt_baton2_t *pb = baton;

  FUNC0(FUNC3(realm, pool));
  FUNC0(FUNC4(&cert_file, FUNC1("Client certificate filename: "),
                 FALSE, pb, pool));
  FUNC0(FUNC5(&abs_cert_file, cert_file, pool));

  cred = FUNC2(pool, sizeof(*cred));
  cred->cert_file = abs_cert_file;
  cred->may_save = may_save;
  *cred_p = cred;

  return SVN_NO_ERROR;
}