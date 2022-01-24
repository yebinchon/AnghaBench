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
typedef  int /*<<< orphan*/  psaddr_t ;
typedef  int /*<<< orphan*/  ps_err_e ;

/* Variables and functions */
 int /*<<< orphan*/  PS_ERR ; 
 int /*<<< orphan*/  PS_OK ; 
 int /*<<< orphan*/  builtin_type_void_data_ptr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 

ps_err_e
FUNC2 (struct ps_prochandle *ph, psaddr_t addr, void *buf, size_t len)
{
  int err = FUNC1 (
    FUNC0(&addr, builtin_type_void_data_ptr), buf, len);
  return (err == 0 ? PS_OK : PS_ERR);
}