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
struct ps_prochandle {int dummy; } ;
struct minimal_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  psaddr_t ;
typedef  int /*<<< orphan*/  ps_err_e ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  PS_NOSYM ; 
 int /*<<< orphan*/  PS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  builtin_type_void_data_ptr ; 
 struct minimal_symbol* FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ps_err_e
FUNC3 (struct ps_prochandle *ph, const char *obj,
   const char *name, psaddr_t *sym_addr)
{
  struct minimal_symbol *ms;
  CORE_ADDR addr;

  ms = FUNC1 (name, NULL, NULL);
  if (ms == NULL)
    return PS_NOSYM;

  addr = FUNC0 (ms);
  FUNC2(sym_addr, builtin_type_void_data_ptr, addr);
  return PS_OK;
}