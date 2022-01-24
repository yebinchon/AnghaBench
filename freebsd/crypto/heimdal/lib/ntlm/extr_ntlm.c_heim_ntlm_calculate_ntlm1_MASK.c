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
struct ntlm_buf {int length; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int ENOMEM ; 
 int HNTLM_ERR_INVALID_LENGTH ; 
 size_t MD4_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct ntlm_buf*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (unsigned char*,unsigned char*,unsigned char*) ; 

int
FUNC5(void *key, size_t len,
			  unsigned char challenge[8],
			  struct ntlm_buf *answer)
{
    unsigned char res[21];
    int ret;

    if (len != MD4_DIGEST_LENGTH)
	return HNTLM_ERR_INVALID_LENGTH;

    FUNC2(res, key, len);
    FUNC3(&res[MD4_DIGEST_LENGTH], 0, sizeof(res) - MD4_DIGEST_LENGTH);

    answer->data = FUNC1(24);
    if (answer->data == NULL)
	return ENOMEM;
    answer->length = 24;

    ret = FUNC4(&res[0],  challenge, ((unsigned char *)answer->data) + 0);
    if (ret)
	goto out;
    ret = FUNC4(&res[7],  challenge, ((unsigned char *)answer->data) + 8);
    if (ret)
	goto out;
    ret = FUNC4(&res[14], challenge, ((unsigned char *)answer->data) + 16);
    if (ret)
	goto out;

    return 0;

out:
    FUNC0(answer);
    return ret;
}