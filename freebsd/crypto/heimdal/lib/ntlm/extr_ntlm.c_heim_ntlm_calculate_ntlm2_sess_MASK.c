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
struct ntlm_buf {unsigned char* data; int length; } ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int FUNC1 (unsigned char const*,unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ntlm_buf*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (unsigned char*,unsigned char*,unsigned char*) ; 

int
FUNC7(const unsigned char clnt_nonce[8],
			       const unsigned char svr_chal[8],
			       const unsigned char ntlm_hash[16],
			       struct ntlm_buf *lm,
			       struct ntlm_buf *ntlm)
{
    unsigned char ntlm2_sess_hash[8];
    unsigned char res[21], *resp;
    int code;

    code = FUNC1(clnt_nonce, svr_chal,
					       ntlm2_sess_hash);
    if (code) {
	return code;
    }

    lm->data = FUNC3(24);
    if (lm->data == NULL) {
	return ENOMEM;
    }
    lm->length = 24;

    ntlm->data = FUNC3(24);
    if (ntlm->data == NULL) {
	FUNC0(lm->data);
	lm->data = NULL;
	return ENOMEM;
    }
    ntlm->length = 24;

    /* first setup the lm resp */
    FUNC5(lm->data, 0, 24);
    FUNC4(lm->data, clnt_nonce, 8);

    FUNC5(res, 0, sizeof(res));
    FUNC4(res, ntlm_hash, 16);

    resp = ntlm->data;
    code = FUNC6(&res[0], ntlm2_sess_hash, resp + 0);
    if (code)
	goto out;
    code = FUNC6(&res[7], ntlm2_sess_hash, resp + 8);
    if (code)
	goto out;
    code = FUNC6(&res[14], ntlm2_sess_hash, resp + 16);
    if (code)
	goto out;

    return 0;

out:
    FUNC2(ntlm);
    FUNC2(lm);
    return code;
}