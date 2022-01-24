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
struct ntlm_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ntlm_buf*) ; 
 int FUNC1 (struct ntlm_buf*,struct ntlm_buf*,struct ntlm_buf*) ; 
 int FUNC2 (void*,size_t,struct ntlm_buf*,struct ntlm_buf*) ; 

int
FUNC3(void *key, size_t len,
			     struct ntlm_buf *blob,
			     struct ntlm_buf *session,
			     struct ntlm_buf *master)
{
    struct ntlm_buf sess;
    int ret;

    ret = FUNC2(key, len, blob, &sess);
    if (ret)
	return ret;

    ret = FUNC1(&sess, session, master);
    FUNC0(&sess);

    return ret;
}