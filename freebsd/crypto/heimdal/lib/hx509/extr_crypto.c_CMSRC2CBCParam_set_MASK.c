#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct _RC2_params {int maximum_effective_key; } ;
typedef  TYPE_1__* hx509_crypto ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_11__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ heim_octet_string ;
struct TYPE_12__ {int rc2ParameterVersion; int /*<<< orphan*/  iv; } ;
struct TYPE_10__ {struct _RC2_params* param; int /*<<< orphan*/  c; } ;
typedef  TYPE_3__ CMSRC2CBCParameter ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int HX509_CRYPTO_SIG_INVALID_FORMAT ; 
 struct _RC2_params* FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct _RC2_params*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(hx509_context context, const heim_octet_string *param,
		   hx509_crypto crypto, heim_octet_string *ivec)
{
    CMSRC2CBCParameter rc2param;
    struct _RC2_params *p;
    size_t size;
    int ret;

    ret = FUNC4(param->data, param->length,
				    &rc2param, &size);
    if (ret) {
	FUNC8(context);
	return ret;
    }

    p = FUNC3(1, sizeof(*p));
    if (p == NULL) {
	FUNC7(&rc2param);
	FUNC8(context);
	return ENOMEM;
    }
    switch(rc2param.rc2ParameterVersion) {
    case 160:
	crypto->c = FUNC0();
	p->maximum_effective_key = 40;
	break;
    case 120:
	crypto->c = FUNC1();
	p->maximum_effective_key = 64;
	break;
    case 58:
	crypto->c = FUNC2();
	p->maximum_effective_key = 128;
	break;
    default:
	FUNC6(p);
	FUNC7(&rc2param);
	return HX509_CRYPTO_SIG_INVALID_FORMAT;
    }
    if (ivec)
	ret = FUNC5(&rc2param.iv, ivec);
    FUNC7(&rc2param);
    if (ret) {
	FUNC6(p);
	FUNC8(context);
    } else
	crypto->param = p;

    return ret;
}