#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_5__ {int /*<<< orphan*/  number; int /*<<< orphan*/  revision; } ;
struct TYPE_8__ {int /*<<< orphan*/  number; int /*<<< orphan*/  revision; } ;
struct TYPE_6__ {TYPE_1__ rev_item; TYPE_4__ txn_id; int /*<<< orphan*/  copy_id; int /*<<< orphan*/  node_id; } ;
struct TYPE_7__ {TYPE_2__ private_id; } ;
typedef  TYPE_3__ fs_fs__id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int SVN_INT64_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ *) ; 

svn_string_t *
FUNC5(const svn_fs_id_t *fs_id,
                      apr_pool_t *pool)
{
  char string[6 * SVN_INT64_BUFFER_SIZE + 10];
  const fs_fs__id_t *id = (const fs_fs__id_t *)fs_id;

  char *p = FUNC4(string, &id->private_id.node_id);
  p = FUNC4(p, &id->private_id.copy_id);

  if (FUNC2(&id->private_id.txn_id))
    {
      *(p++) = 't';
      p += FUNC0(p, id->private_id.txn_id.revision);
      *(p++) = '-';
      p += FUNC1(p, id->private_id.txn_id.number);
    }
  else
    {
      *(p++) = 'r';
      p += FUNC0(p, id->private_id.rev_item.revision);
      *(p++) = '/';
      p += FUNC0(p, id->private_id.rev_item.number);
    }

  return FUNC3(string, p - string, pool);
}