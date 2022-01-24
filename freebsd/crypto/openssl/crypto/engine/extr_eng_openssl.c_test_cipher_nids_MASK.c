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
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 

__attribute__((used)) static int FUNC3(const int **nids)
{
    static int cipher_nids[4] = { 0, 0, 0, 0 };
    static int pos = 0;
    static int init = 0;

    if (!init) {
        const EVP_CIPHER *cipher;
        if ((cipher = FUNC2()) != NULL)
            cipher_nids[pos++] = FUNC0(cipher);
        if ((cipher = FUNC1()) != NULL)
            cipher_nids[pos++] = FUNC0(cipher);
        cipher_nids[pos] = 0;
        init = 1;
    }
    *nids = cipher_nids;
    return pos;
}