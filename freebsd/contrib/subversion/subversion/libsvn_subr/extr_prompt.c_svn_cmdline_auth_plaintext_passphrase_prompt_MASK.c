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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,char const*,char const*,void*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(svn_boolean_t *may_save_plaintext,
                                             const char *realmstring,
                                             void *baton,
                                             apr_pool_t *pool)
{
  const char *prompt_string = FUNC0("Store passphrase unencrypted (yes/no)? ");
  const char *prompt_text =
  FUNC0("\n-----------------------------------------------------------------------\n"
    "ATTENTION!  Your passphrase for client certificate:\n"
    "\n"
    "   %s\n"
    "\n"
    "can only be stored to disk unencrypted!  You are advised to configure\n"
    "your system so that Subversion can store passphrase encrypted, if\n"
    "possible.  See the documentation for details.\n"
    "\n"
    "You can avoid future appearances of this warning by setting the value\n"
    "of the 'store-ssl-client-cert-pp-plaintext' option to either 'yes' or\n"
    "'no' in '%s'.\n"
    "-----------------------------------------------------------------------\n"
    );

  return FUNC1(may_save_plaintext, realmstring,
                                 prompt_string, prompt_text, baton,
                                 pool);
}