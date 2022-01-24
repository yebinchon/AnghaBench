#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct md5_stream_baton {TYPE_1__* write_checksum; int /*<<< orphan*/  pool; void** write_digest; TYPE_2__* read_checksum; void** read_digest; int /*<<< orphan*/  proxy; } ;
struct TYPE_4__ {int /*<<< orphan*/  digest; } ;
struct TYPE_3__ {int /*<<< orphan*/  digest; } ;

/* Variables and functions */
 int /*<<< orphan*/  APR_MD5_DIGESTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void *baton)
{
  struct md5_stream_baton *btn = baton;

  FUNC0(FUNC2(btn->proxy));

  if (btn->read_digest)
    *btn->read_digest
      = FUNC1(btn->pool, btn->read_checksum->digest,
                    APR_MD5_DIGESTSIZE);

  if (btn->write_digest)
    *btn->write_digest
      = FUNC1(btn->pool, btn->write_checksum->digest,
                    APR_MD5_DIGESTSIZE);

  return SVN_NO_ERROR;
}