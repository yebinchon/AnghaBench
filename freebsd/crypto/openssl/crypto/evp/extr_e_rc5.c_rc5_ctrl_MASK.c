#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int rounds; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
#define  EVP_CTRL_GET_RC5_ROUNDS 133 
#define  EVP_CTRL_INIT 132 
#define  EVP_CTRL_SET_RC5_ROUNDS 131 
 int /*<<< orphan*/  EVP_F_RC5_CTRL ; 
 int /*<<< orphan*/  EVP_R_UNSUPPORTED_NUMBER_OF_ROUNDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  RC5_12_ROUNDS 130 
#define  RC5_16_ROUNDS 129 
#define  RC5_8_ROUNDS 128 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(EVP_CIPHER_CTX *c, int type, int arg, void *ptr)
{
    switch (type) {
    case EVP_CTRL_INIT:
        FUNC1(c)->rounds = RC5_12_ROUNDS;
        return 1;

    case EVP_CTRL_GET_RC5_ROUNDS:
        *(int *)ptr = FUNC1(c)->rounds;
        return 1;

    case EVP_CTRL_SET_RC5_ROUNDS:
        switch (arg) {
        case RC5_8_ROUNDS:
        case RC5_12_ROUNDS:
        case RC5_16_ROUNDS:
            FUNC1(c)->rounds = arg;
            return 1;

        default:
            FUNC0(EVP_F_RC5_CTRL, EVP_R_UNSUPPORTED_NUMBER_OF_ROUNDS);
            return 0;
        }

    default:
        return -1;
    }
}