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
typedef  int /*<<< orphan*/  SSL_CIPHER ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned char const*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,unsigned char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 scalar_t__ FUNC7 (unsigned char const*,unsigned char const*,size_t) ; 

__attribute__((used)) static void FUNC8(SSL *s)
{
    const unsigned char *rlist;
    static const unsigned char scsv_id[] = { 0, 0xFF };
    size_t i, rlistlen, num;
    if (!FUNC6(s))
        return;
    num = FUNC5(s, NULL);
    FUNC2(num == 2);
    rlistlen = FUNC5(s, &rlist);
    FUNC1(bio_err, "Client cipher list: ");
    for (i = 0; i < rlistlen; i += num, rlist += num) {
        const SSL_CIPHER *c = FUNC3(s, rlist);
        if (i)
            FUNC1(bio_err, ":");
        if (c != NULL) {
            FUNC1(bio_err, FUNC4(c));
        } else if (FUNC7(rlist, scsv_id, num) == 0) {
            FUNC1(bio_err, "SCSV");
        } else {
            size_t j;
            FUNC1(bio_err, "0x");
            for (j = 0; j < num; j++)
                FUNC0(bio_err, "%02X", rlist[j]);
        }
    }
    FUNC1(bio_err, "\n");
}