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
struct TYPE_3__ {int kind; int /*<<< orphan*/  digest; } ;
typedef  TYPE_1__ svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * digest_sizes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  svn_checksum_fnv1a_32 131 
#define  svn_checksum_fnv1a_32x4 130 
#define  svn_checksum_md5 129 
#define  svn_checksum_sha1 128 

svn_boolean_t
FUNC3(svn_checksum_t *checksum)
{
  /* By definition, the NULL checksum matches all others, including the
     empty one. */
  if (!checksum)
    return TRUE;

  switch (checksum->kind)
    {
      case svn_checksum_md5:
      case svn_checksum_sha1:
      case svn_checksum_fnv1a_32:
      case svn_checksum_fnv1a_32x4:
        return FUNC1(checksum->digest,
                                  FUNC2(checksum->kind),
                                  digest_sizes[checksum->kind]);

      default:
        /* We really shouldn't get here, but if we do... */
        FUNC0();
    }
}