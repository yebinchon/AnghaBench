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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int /*<<< orphan*/  PEM_F_PEM_WRITE ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char const*,unsigned char const*,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(FILE *fp, const char *name, const char *header,
              const unsigned char *data, long len)
{
    BIO *b;
    int ret;

    if ((b = FUNC1(FUNC2())) == NULL) {
        FUNC5(PEM_F_PEM_WRITE, ERR_R_BUF_LIB);
        return 0;
    }
    FUNC3(b, fp, BIO_NOCLOSE);
    ret = FUNC4(b, name, header, data, len);
    FUNC0(b);
    return ret;
}