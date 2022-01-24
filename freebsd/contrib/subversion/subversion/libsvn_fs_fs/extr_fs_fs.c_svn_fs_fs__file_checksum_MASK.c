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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int kind; int /*<<< orphan*/  digest; } ;
typedef  TYPE_2__ svn_checksum_t ;
typedef  int svn_checksum_kind_t ;
struct TYPE_10__ {TYPE_1__* data_rep; } ;
typedef  TYPE_3__ node_revision_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {int /*<<< orphan*/  sha1_digest; int /*<<< orphan*/  has_sha1; int /*<<< orphan*/  md5_digest; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_2__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
#define  svn_checksum_md5 129 
#define  svn_checksum_sha1 128 

svn_error_t *
FUNC1(svn_checksum_t **checksum,
                         node_revision_t *noderev,
                         svn_checksum_kind_t kind,
                         apr_pool_t *pool)
{
  *checksum = NULL;

  if (noderev->data_rep)
    {
      svn_checksum_t temp;
      temp.kind = kind;

      switch(kind)
        {
          case svn_checksum_md5:
            temp.digest = noderev->data_rep->md5_digest;
            break;

          case svn_checksum_sha1:
            if (! noderev->data_rep->has_sha1)
              return SVN_NO_ERROR;

            temp.digest = noderev->data_rep->sha1_digest;
            break;

          default:
            return SVN_NO_ERROR;
        }

      *checksum = FUNC0(&temp, pool);
    }

  return SVN_NO_ERROR;
}