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
typedef  scalar_t__ svn_errno_t ;
struct TYPE_3__ {scalar_t__ errcode; int /*<<< orphan*/ * errdesc; } ;
typedef  TYPE_1__ err_defn ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* error_table ; 

char *
FUNC3(apr_status_t statcode, char *buf, apr_size_t bufsize)
{
  const err_defn *defn;

  for (defn = error_table; defn->errdesc != NULL; ++defn)
    if (defn->errcode == (svn_errno_t)statcode)
      {
        FUNC1(buf, FUNC0(defn->errdesc), bufsize);
        return buf;
      }

  return FUNC2(statcode, buf, bufsize);
}