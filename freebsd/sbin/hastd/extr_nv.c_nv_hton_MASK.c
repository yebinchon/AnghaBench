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
struct nvhdr {int dummy; } ;
struct nv {scalar_t__ nv_error; struct ebuf* nv_ebuf; } ;
struct ebuf {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct nvhdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nv*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned char* FUNC3 (struct ebuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvhdr*,int) ; 

struct ebuf *
FUNC5(struct nv *nv)
{
	struct nvhdr *nvh;
	unsigned char *ptr;
	size_t size;

	FUNC1(nv);
	FUNC2(nv->nv_error == 0);

	ptr = FUNC3(nv->nv_ebuf, &size);
	while (size > 0) {
		/*
		 * Minimum size at this point is size of nvhdr structure,
		 * one character long name plus terminating '\0'.
		 */
		FUNC2(size >= sizeof(*nvh) + 2);
		nvh = (struct nvhdr *)ptr;
		FUNC2(FUNC0(nvh) <= size);
		FUNC4(nvh, false);
		ptr += FUNC0(nvh);
		size -= FUNC0(nvh);
	}

	return (nv->nv_ebuf);
}