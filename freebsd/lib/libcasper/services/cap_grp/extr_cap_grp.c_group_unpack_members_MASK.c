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
typedef  int /*<<< orphan*/  nvlname ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (char*) ; 
 size_t _ALIGNBYTES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC7 (char*,int,char*,unsigned int) ; 
 int FUNC8 (char const*) ; 

__attribute__((used)) static int
FUNC9(const nvlist_t *nvl, char ***fieldp, char **bufferp,
    size_t *bufsizep)
{
	const char *mem;
	char **outstrs, *str, nvlname[64];
	size_t nmem, datasize, strsize;
	unsigned int ii;
	int n;

	if (!FUNC4(nvl, "gr_nmem")) {
		datasize = _ALIGNBYTES + sizeof(char *);
		if (datasize >= *bufsizep)
			return (ERANGE);
		outstrs = (char **)FUNC0(*bufferp);
		outstrs[0] = NULL;
		*fieldp = outstrs;
		*bufferp += datasize;
		*bufsizep -= datasize;
		return (0);
	}

	nmem = (size_t)FUNC5(nvl, "gr_nmem");
	datasize = _ALIGNBYTES + sizeof(char *) * (nmem + 1);
	for (ii = 0; ii < nmem; ii++) {
		n = FUNC7(nvlname, sizeof(nvlname), "gr_mem[%u]", ii);
		FUNC1(n > 0 && n < (int)sizeof(nvlname));
		mem = FUNC2(nvl, nvlname, NULL);
		if (mem == NULL)
			return (EINVAL);
		datasize += FUNC8(mem) + 1;
	}

	if (datasize >= *bufsizep)
		return (ERANGE);

	outstrs = (char **)FUNC0(*bufferp);
	str = (char *)outstrs + sizeof(char *) * (nmem + 1);
	for (ii = 0; ii < nmem; ii++) {
		n = FUNC7(nvlname, sizeof(nvlname), "gr_mem[%u]", ii);
		FUNC1(n > 0 && n < (int)sizeof(nvlname));
		mem = FUNC6(nvl, nvlname);
		strsize = FUNC8(mem) + 1;
		FUNC3(str, mem, strsize);
		outstrs[ii] = str;
		str += strsize;
	}
	FUNC1(ii == nmem);
	outstrs[ii] = NULL;

	*fieldp = outstrs;
	*bufferp += datasize;
	*bufsizep -= datasize;

	return (0);
}