#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int ver; int current; scalar_t__ chunk_index; TYPE_2__* sfile; int /*<<< orphan*/  start; } ;
typedef  TYPE_3__ rep_state_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {TYPE_1__* rfile; } ;
struct TYPE_6__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t*
FUNC5(rep_state_t *rs, apr_pool_t *pool)
{
  if (rs->ver == -1)
    {
      char buf[4];
      FUNC0(FUNC2(rs, NULL, rs->start, pool));
      FUNC0(FUNC4(rs->sfile->rfile->file, buf,
                                     sizeof(buf), NULL, NULL, pool));

      /* ### Layering violation */
      if (! ((buf[0] == 'S') && (buf[1] == 'V') && (buf[2] == 'N')))
        return FUNC3
          (SVN_ERR_FS_CORRUPT, NULL,
           FUNC1("Malformed svndiff data in representation"));
      rs->ver = buf[3];

      rs->chunk_index = 0;
      rs->current = 4;
    }

  return SVN_NO_ERROR;
}