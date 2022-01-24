#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {int protection; } ;
typedef  TYPE_1__ apr_finfo_t ;
typedef  int apr_fileperms_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_FINFO_PROT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(apr_file_t *fd,
                         apr_fileperms_t *perms,
                         const char *directory,
                         apr_pool_t *scratch_pool)
{
  apr_finfo_t finfo;
  apr_fileperms_t default_perms;

  FUNC0(FUNC1(&default_perms, directory, scratch_pool));
  FUNC0(FUNC2(&finfo, APR_FINFO_PROT, fd, scratch_pool));

  /* Glom the perms together. */
  *perms = default_perms | finfo.protection;
  return SVN_NO_ERROR;
}