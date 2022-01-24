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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*) ; 

int FUNC3(SSL *s, unsigned char *out,
                                 unsigned char *prev, size_t prevlen,
                                 size_t *secret_size)
{
    const EVP_MD *md = FUNC1(s);

    *secret_size = FUNC0(md);
    /* Calls SSLfatal() if required */
    return FUNC2(s, md, prev, NULL, 0, out);
}