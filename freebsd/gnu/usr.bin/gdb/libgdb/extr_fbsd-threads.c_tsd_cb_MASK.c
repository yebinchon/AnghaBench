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
typedef  int /*<<< orphan*/  thread_key_t ;
struct minimal_symbol {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  builtin_type_void_func_ptr ; 
 int /*<<< orphan*/  FUNC1 (void (*) (void*),int /*<<< orphan*/ ) ; 
 struct minimal_symbol* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,void (*) (void*),char*) ; 

__attribute__((used)) static int
FUNC4 (thread_key_t key, void (*destructor)(void *), void *ignore)
{
  struct minimal_symbol *ms;
  char *name;

  ms = FUNC2 (
	FUNC1(destructor, builtin_type_void_func_ptr));
  if (!ms)
    name = "???";
  else
    name = FUNC0 (ms);

  FUNC3 ("Key %d, destructor %p <%s>\n", key, destructor, name);
  return 0;
}