#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct store_ctx {int format; int /*<<< orphan*/  f; } ;
typedef  int /*<<< orphan*/  hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
struct TYPE_4__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ heim_octet_string ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_KEY_FORMAT_DER ; 
#define  USE_DER 129 
#define  USE_PEM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(hx509_context context, void *ctx, hx509_cert c)
{
    struct store_ctx *sc = ctx;
    heim_octet_string data;
    int ret;

    ret = FUNC6(context, c, &data);
    if (ret)
	return ret;

    switch (sc->format) {
    case USE_DER:
	FUNC5(data.data, data.length, 1, sc->f);
	FUNC4(data.data);
	break;
    case USE_PEM:
	FUNC7(context, "CERTIFICATE", NULL, sc->f,
			data.data, data.length);
	FUNC4(data.data);
	if (FUNC1(c)) {
	    hx509_private_key key = FUNC0(c);
	    ret = FUNC2(context, key,
					    HX509_KEY_FORMAT_DER, &data);
	    if (ret)
		break;
	    FUNC7(context, FUNC3(key), NULL, sc->f,
			    data.data, data.length);
	    FUNC4(data.data);
	}
	break;
    }

    return 0;
}