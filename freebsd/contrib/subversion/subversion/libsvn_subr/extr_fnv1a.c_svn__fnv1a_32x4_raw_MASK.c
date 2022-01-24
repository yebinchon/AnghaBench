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
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  size_t apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FNV1_BASE_32 ; 
 size_t SCALING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 

void
FUNC2(apr_uint32_t hashes[4],
                    const void *input,
                    apr_size_t len)
{
  apr_size_t processed;

  apr_size_t i;
  for (i = 0; i < SCALING; ++i)
    hashes[i] = FNV1_BASE_32;

  /* Process full 16 byte chunks. */
  processed = FUNC1(hashes, input, len);

  /* Fold the remainder (if any) into the first hash. */
  hashes[0] = FUNC0(hashes[0], (const char *)input + processed,
                       len - processed);
}