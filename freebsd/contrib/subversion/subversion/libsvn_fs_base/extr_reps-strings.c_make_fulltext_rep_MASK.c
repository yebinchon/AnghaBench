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
typedef  int /*<<< orphan*/  svn_checksum_t ;
struct TYPE_6__ {int /*<<< orphan*/ * string_key; } ;
struct TYPE_7__ {TYPE_1__ fulltext; } ;
struct TYPE_8__ {TYPE_2__ contents; void* sha1_checksum; void* md5_checksum; int /*<<< orphan*/  kind; int /*<<< orphan*/ * txn_id; } ;
typedef  TYPE_3__ representation_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  rep_kind_fulltext ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static representation_t *
FUNC3(const char *str_key,
                  const char *txn_id,
                  svn_checksum_t *md5_checksum,
                  svn_checksum_t *sha1_checksum,
                  apr_pool_t *pool)

{
  representation_t *rep = FUNC0(pool, sizeof(*rep));
  if (txn_id && *txn_id)
    rep->txn_id = FUNC1(pool, txn_id);
  rep->kind = rep_kind_fulltext;
  rep->md5_checksum = FUNC2(md5_checksum, pool);
  rep->sha1_checksum = FUNC2(sha1_checksum, pool);
  rep->contents.fulltext.string_key
    = str_key ? FUNC1(pool, str_key) : NULL;
  return rep;
}