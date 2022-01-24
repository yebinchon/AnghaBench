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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (void*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC3 (void *handle, const char *name)
{
  void *sym = FUNC1 (handle, name);
  if (sym == NULL)
    FUNC2 ("Symbol \"%s\" not found in libthread_db: %s", name, FUNC0 ());
  return sym;
}