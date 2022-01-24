#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC5 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t * FUNC6(svn_boolean_t quiet, apr_pool_t *pool)
{
  const char *fs_desc_start
    = FUNC1("The following repository back-end (FS) modules are available:\n\n");

  svn_stringbuf_t *version_footer;

  version_footer = FUNC5(fs_desc_start, pool);
  FUNC0(FUNC2(version_footer, pool));

#ifdef SVN_HAVE_SASL
  svn_stringbuf_appendcstr(version_footer,
                           _("\nCyrus SASL authentication is available.\n"));
#endif

  return FUNC3(NULL, "svnserve", TRUE, quiet, FALSE,
                             version_footer->data,
                             NULL, NULL, NULL, NULL, NULL, pool);
}