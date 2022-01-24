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
struct addrinfo {char* ai_canonname; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  encoded ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CANONNAME ; 
 int /*<<< orphan*/  WIND_PROFILE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 size_t FUNC9 (char const*) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned int,char*,size_t*) ; 
 int FUNC11 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static void
FUNC13(const char *name)
{
    unsigned i;
    char encoded[1024];
    char *ep;
    int ret;
    struct addrinfo hints;
    struct addrinfo *ai;

    size_t u_len = FUNC9(name);
    uint32_t *u = FUNC6(u_len * sizeof(uint32_t));
    size_t norm_len = u_len * 2;
    uint32_t *norm = FUNC6(norm_len * sizeof(uint32_t));

    if (u == NULL && u_len != 0)
	FUNC0(1, "malloc failed");
    if (norm == NULL && norm_len != 0)
	FUNC0(1, "malloc failed");

    ret = FUNC12(name, u, &u_len);
    if (ret)
	FUNC0(1, "utf8 conversion failed");
    ret = FUNC11(u, u_len, norm, &norm_len, WIND_PROFILE_NAME);
    if (ret)
	FUNC0(1, "stringprep failed");
    FUNC1(u);

    ep = encoded;
    for (i = 0; i < norm_len; ++i) {
	unsigned j;
	size_t len;

	for (j = i; j < norm_len && !FUNC5(norm[j]); ++j)
	    ;
	len = sizeof(encoded) - (ep - encoded);
	ret = FUNC10(norm + i, j - i, ep, &len);
	if (ret)
	    FUNC0(1, "punycode failed");

	ep += len;
	*ep++ = '.';
	i = j;
    }
    *ep = '\0';
    FUNC1(norm);

    FUNC8("Converted \"%s\" into \"%s\"\n", name, encoded);

    FUNC7(&hints, 0, sizeof(hints));
    hints.ai_flags = AI_CANONNAME;
    ret = FUNC4(encoded, NULL, &hints, &ai);
    if(ret)
	FUNC0(1, "getaddrinfo failed: %s", FUNC3(ret));
    FUNC8("canonical-name: %s\n", ai->ai_canonname);
    FUNC2(ai);
}