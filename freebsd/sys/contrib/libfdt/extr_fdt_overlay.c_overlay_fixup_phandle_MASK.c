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
typedef  int uint32_t ;

/* Variables and functions */
 int FDT_ERR_BADOVERLAY ; 
 int FDT_ERR_INTERNAL ; 
 int FDT_ERR_NOTFOUND ; 
 char* FUNC0 (void*,int,char const**,int*) ; 
 void* FUNC1 (char const*,char,int) ; 
 int FUNC2 (void*,void*,int,char const*,int,char const*,int,int,char const*) ; 
 int FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int FUNC4(void *fdt, void *fdto, int symbols_off,
				 int property)
{
	const char *value;
	const char *label;
	int len;

	value = FUNC0(fdto, property,
				      &label, &len);
	if (!value) {
		if (len == -FDT_ERR_NOTFOUND)
			return -FDT_ERR_INTERNAL;

		return len;
	}

	do {
		const char *path, *name, *fixup_end;
		const char *fixup_str = value;
		uint32_t path_len, name_len;
		uint32_t fixup_len;
		char *sep, *endptr;
		int poffset, ret;

		fixup_end = FUNC1(value, '\0', len);
		if (!fixup_end)
			return -FDT_ERR_BADOVERLAY;
		fixup_len = fixup_end - fixup_str;

		len -= fixup_len + 1;
		value += fixup_len + 1;

		path = fixup_str;
		sep = FUNC1(fixup_str, ':', fixup_len);
		if (!sep || *sep != ':')
			return -FDT_ERR_BADOVERLAY;

		path_len = sep - path;
		if (path_len == (fixup_len - 1))
			return -FDT_ERR_BADOVERLAY;

		fixup_len -= path_len + 1;
		name = sep + 1;
		sep = FUNC1(name, ':', fixup_len);
		if (!sep || *sep != ':')
			return -FDT_ERR_BADOVERLAY;

		name_len = sep - name;
		if (!name_len)
			return -FDT_ERR_BADOVERLAY;

		poffset = FUNC3(sep + 1, &endptr, 10);
		if ((*endptr != '\0') || (endptr <= (sep + 1)))
			return -FDT_ERR_BADOVERLAY;

		ret = FUNC2(fdt, fdto, symbols_off,
						path, path_len, name, name_len,
						poffset, label);
		if (ret)
			return ret;
	} while (len > 0);

	return 0;
}