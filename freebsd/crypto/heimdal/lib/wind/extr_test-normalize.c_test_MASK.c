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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int MAX_LENGTH_CANON ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (char*,char*,char**) ; 

__attribute__((used)) static int
FUNC9(char *buf, unsigned lineno)
{
    char *last;
    char *c;
    uint32_t in[MAX_LENGTH_CANON];
    size_t in_len;
    uint32_t out[MAX_LENGTH_CANON];
    size_t out_len;
    uint32_t *tmp;
    size_t norm_len;
    int ret;

    c = FUNC8(buf, ";", &last);
    if (c == NULL)
	return 0;

    in_len = FUNC6(c, in);
    if (FUNC8(NULL, ";", &last) == NULL)
	return 0;
    if (FUNC8(NULL, ";", &last) == NULL)
	return 0;
    c = FUNC8(NULL, ";", &last);
    if (c == NULL)
	return 0;
    out_len = FUNC6(c, out);
    if (FUNC8(NULL, ";", &last) == NULL)
	return 0;
    c = last;

    norm_len = MAX_LENGTH_CANON;
    tmp = FUNC4(norm_len * sizeof(uint32_t));
    if (tmp == NULL && norm_len != 0)
	FUNC2(1, "malloc");
    ret = FUNC0(in, in_len, tmp, &norm_len);
    if (ret) {
	FUNC7("wind_stringprep_normalize %s failed\n", c);
	FUNC3(tmp);
	return 1;
    }
    if (out_len != norm_len) {
	FUNC7("%u: wrong out len (%s)\n", lineno, c);
	FUNC1("Expected", out, out_len);
	FUNC1("Received", tmp, norm_len);
	FUNC3(tmp);
	return 1;
    }
    if (FUNC5(out, tmp, out_len * sizeof(uint32_t)) != 0) {
	FUNC7("%u: wrong out data (%s)\n", lineno, c);
	FUNC1("Expected", out, out_len);
	FUNC1("Received", tmp, norm_len);
	FUNC3(tmp);
	return 1;
    }
    FUNC3(tmp);
    return 0;
}