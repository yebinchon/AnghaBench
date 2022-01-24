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
struct cmsghdr {int /*<<< orphan*/  cmsg_len; int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; } ;
struct af_alg_iv {unsigned int ivlen; int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int const) ; 
 int /*<<< orphan*/  ALG_SET_IV ; 
 scalar_t__ FUNC1 (struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOL_ALG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*,unsigned int const) ; 

__attribute__((used)) static void FUNC4(struct cmsghdr *cmsg, const unsigned char *iv,
                            const unsigned int len)
{
    struct af_alg_iv *aiv;

    cmsg->cmsg_level = SOL_ALG;
    cmsg->cmsg_type = ALG_SET_IV;
    cmsg->cmsg_len = FUNC2(FUNC0(len));
    aiv = (struct af_alg_iv *)FUNC1(cmsg);
    aiv->ivlen = len;
    FUNC3(aiv->iv, iv, len);
}