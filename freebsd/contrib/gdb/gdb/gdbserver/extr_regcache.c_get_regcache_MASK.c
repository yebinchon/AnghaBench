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
struct thread_info {int dummy; } ;
struct inferior_regcache_data {int registers_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct thread_info*) ; 

__attribute__((used)) static struct inferior_regcache_data *
FUNC3 (struct thread_info *inf, int fetch)
{
  struct inferior_regcache_data *regcache;

  regcache = (struct inferior_regcache_data *) FUNC2 (inf);

  if (regcache == NULL)
    FUNC0 ("no register cache");

  /* FIXME - fetch registers for INF */
  if (fetch && regcache->registers_valid == 0)
    {
      FUNC1 (0);
      regcache->registers_valid = 1;
    }

  return regcache;
}