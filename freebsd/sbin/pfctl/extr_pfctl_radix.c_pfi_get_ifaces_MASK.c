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
struct pfioc_iface {int pfiio_esize; int pfiio_size; struct pfi_kif* pfiio_buffer; int /*<<< orphan*/  pfiio_name; } ;
struct pfi_kif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCIGETIFACES ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pfioc_iface*,int) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_iface*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC3(const char *filter, struct pfi_kif *buf, int *size)
{
	struct pfioc_iface io;

	if (size == NULL || *size < 0 || (*size && buf == NULL)) {
		errno = EINVAL;
		return (-1);
	}
	FUNC0(&io, sizeof io);
	if (filter != NULL)
		if (FUNC2(io.pfiio_name, filter, sizeof(io.pfiio_name)) >=
		    sizeof(io.pfiio_name)) {
			errno = EINVAL;
			return (-1);
		}
	io.pfiio_buffer = buf;
	io.pfiio_esize = sizeof(*buf);
	io.pfiio_size = *size;
	if (FUNC1(dev, DIOCIGETIFACES, &io))
		return (-1);
	*size = io.pfiio_size;
	return (0);
}