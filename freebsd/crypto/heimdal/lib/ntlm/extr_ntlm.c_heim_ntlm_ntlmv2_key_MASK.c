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
struct ntlm_buf {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  HMAC_CTX ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int,struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(const void *key, size_t len,
		     const char *username,
		     const char *target,
		     unsigned char ntlmv2[16])
{
    int ret;
    unsigned int hmaclen;
    HMAC_CTX *c;

    c = FUNC2();
    if (c == NULL)
	return ENOMEM;
    FUNC4(c, key, len, FUNC0(), NULL);
    {
	struct ntlm_buf buf;
	/* uppercase username and turn it into ucs2-le */
	ret = FUNC6(username, 1, &buf);
	if (ret)
	    goto out;
	FUNC5(c, buf.data, buf.length);
	FUNC7(buf.data);
	/* uppercase target and turn into ucs2-le */
	ret = FUNC6(target, 1, &buf);
	if (ret)
	    goto out;
	FUNC5(c, buf.data, buf.length);
	FUNC7(buf.data);
    }
    FUNC3(c, ntlmv2, &hmaclen);
 out:
    FUNC1(c);

    return ret;
}