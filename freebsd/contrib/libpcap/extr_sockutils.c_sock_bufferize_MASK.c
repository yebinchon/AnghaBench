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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 

int FUNC2(const char *buffer, int size, char *tempbuf, int *offset, int totsize, int checkonly, char *errbuf, int errbuflen)
{
	if ((*offset + size) > totsize)
	{
		if (errbuf)
			FUNC1(errbuf, errbuflen, "Not enough space in the temporary send buffer.");
		return -1;
	}

	if (!checkonly)
		FUNC0(tempbuf + (*offset), buffer, size);

	(*offset) += size;

	return 0;
}