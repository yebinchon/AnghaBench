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
typedef  int /*<<< orphan*/  u_long ;
struct ioc_read_toc_entry32 {int /*<<< orphan*/  data; } ;
struct ioc_read_toc_entry {struct cd_toc_entry* data; } ;
struct cd_toc_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cd_toc_entry *
FUNC2(void *irtep, u_long cmd)
{
	union {
		struct ioc_read_toc_entry irte;
#ifdef COMPAT_FREEBSD32
		struct ioc_read_toc_entry32 irte32;
#endif
	} *irteup;

	irteup = irtep;
	switch (FUNC0(cmd)) {
	case sizeof(irteup->irte):
		return (irteup->irte.data);
#ifdef COMPAT_FREEBSD32
	case sizeof(irteup->irte32):
		return ((struct cd_toc_entry *)(uintptr_t)irteup->irte32.data);
#endif
	default:
		FUNC1("Unhandled ioctl command %ld", cmd);
	}
}