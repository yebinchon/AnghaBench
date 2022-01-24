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
struct TYPE_3__ {scalar_t__ revision; int /*<<< orphan*/  number; } ;
typedef  TYPE_1__ svn_fs_fs__id_part_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3(char *p,
                const svn_fs_fs__id_part_t *part)
{
  if (FUNC0(part->revision))
    {
      /* ordinary old style / new style ID */
      p += FUNC2(p, part->number);
      if (part->revision > 0)
        {
          *(p++) = '-';
          p += FUNC1(p, part->revision);
        }
    }
  else
    {
      /* in txn: mark with "_" prefix */
      *(p++) = '_';
      p += FUNC2(p, part->number);
    }

  *(p++) = '.';

  return p;
}