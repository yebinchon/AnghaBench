#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  conv_form; int /*<<< orphan*/  pub_key; int /*<<< orphan*/  group; } ;
typedef  TYPE_1__ EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_I2O_ECPUBLICKEY ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (size_t) ; 

int FUNC4(const EC_KEY *a, unsigned char **out)
{
    size_t buf_len = 0;
    int new_buffer = 0;

    if (a == NULL) {
        FUNC1(EC_F_I2O_ECPUBLICKEY, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    buf_len = FUNC0(a->group, a->pub_key,
                                 a->conv_form, NULL, 0, NULL);

    if (out == NULL || buf_len == 0)
        /* out == NULL => just return the length of the octet string */
        return buf_len;

    if (*out == NULL) {
        if ((*out = FUNC3(buf_len)) == NULL) {
            FUNC1(EC_F_I2O_ECPUBLICKEY, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        new_buffer = 1;
    }
    if (!FUNC0(a->group, a->pub_key, a->conv_form,
                            *out, buf_len, NULL)) {
        FUNC1(EC_F_I2O_ECPUBLICKEY, ERR_R_EC_LIB);
        if (new_buffer) {
            FUNC2(*out);
            *out = NULL;
        }
        return 0;
    }
    if (!new_buffer)
        *out += buf_len;
    return buf_len;
}