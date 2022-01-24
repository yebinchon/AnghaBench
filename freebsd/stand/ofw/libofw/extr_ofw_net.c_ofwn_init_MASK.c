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
struct iodesc {char* myea; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int,int,int,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  chosen ; 
 char* dmabuf ; 
 char* FUNC5 (char*) ; 
 int netinstance ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static void
FUNC8(struct iodesc *desc, void *machdep_hint)
{
	phandle_t	netdev;
	char		path[64];
	char		*ch;
	int		pathlen;

	pathlen = FUNC3(chosen, "bootpath", path, 64);
	if ((ch = FUNC7(path, ':')) != NULL)
		*ch = '\0';
	netdev = FUNC2(path);
#ifdef __sparc64__
	if (OF_getprop(netdev, "mac-address", desc->myea, 6) == -1)
#else
	if (FUNC3(netdev, "local-mac-address", desc->myea, 6) == -1)
#endif
		goto punt;

	FUNC6("boot: ethernet address: %s\n", FUNC5(desc->myea));

	if ((netinstance = FUNC4(path)) == -1) {
		FUNC6("Could not open network device.\n");
		goto punt;
	}

#if defined(NETIF_DEBUG)
	printf("ofwn_init: Open Firmware instance handle: %08x\n", netinstance);
#endif

#ifndef __sparc64__
	dmabuf = NULL;
	if (FUNC0("dma-alloc", netinstance, 1, 1, (64 * 1024), &dmabuf)
	    < 0) {   
		FUNC6("Failed to allocate DMA buffer (got %p).\n", dmabuf);
		goto punt;
	}

#if defined(NETIF_DEBUG)
	printf("ofwn_init: allocated DMA buffer: %p\n", dmabuf);
#endif
#endif

	return;

punt:
	FUNC6("\n");
	FUNC6("Could not boot from %s.\n", path);
	FUNC1();
}