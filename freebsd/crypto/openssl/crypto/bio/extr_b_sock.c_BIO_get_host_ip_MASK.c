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
typedef  int /*<<< orphan*/  BIO_ADDRINFO ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  BIO_F_BIO_GET_HOST_IP ; 
 int /*<<< orphan*/  BIO_LOOKUP_CLIENT ; 
 int /*<<< orphan*/  BIO_R_GETHOSTBYNAME_ADDR_IS_NOT_AF_INET ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char const*) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(const char *str, unsigned char *ip)
{
    BIO_ADDRINFO *res = NULL;
    int ret = 0;

    if (FUNC5() != 1)
        return 0;               /* don't generate another error code here */

    if (FUNC4(str, NULL, BIO_LOOKUP_CLIENT, AF_INET, SOCK_STREAM, &res)) {
        size_t l;

        if (FUNC1(res) != AF_INET) {
            FUNC6(BIO_F_BIO_GET_HOST_IP,
                   BIO_R_GETHOSTBYNAME_ADDR_IS_NOT_AF_INET);
        } else if (FUNC3(FUNC0(res), NULL, &l)) {
            /*
             * Because only AF_INET addresses will reach this far, we can assert
             * that l should be 4
             */
            if (FUNC8(l == 4))
                ret = FUNC3(FUNC0(res), ip, &l);
        }
        FUNC2(res);
    } else {
        FUNC7(2, "host=", str);
    }

    return ret;
}