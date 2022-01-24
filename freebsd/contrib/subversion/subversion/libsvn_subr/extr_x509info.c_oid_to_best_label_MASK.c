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
struct TYPE_3__ {char const* short_label; char const* long_label; } ;
typedef  TYPE_1__ asn1_oid ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC2(unsigned char *oid, apr_size_t oid_len,
                                     apr_pool_t *result_pool)
{
  const asn1_oid *entry = FUNC0(oid, oid_len);

  if (entry)
    {
      if (entry->short_label)
        return entry->short_label;

      if (entry->long_label)
        return entry->long_label;
    }
  else
    {
      const char *oid_string = FUNC1(oid, oid_len,
                                                      result_pool, result_pool);
      if (oid_string)
        return oid_string;
    }

  return "??";
}