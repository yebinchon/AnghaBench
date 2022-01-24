#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rk_strpool {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_5__ {size_t len; TYPE_1__* val; } ;
struct TYPE_4__ {int padata_type; } ;
typedef  TYPE_2__ METHOD_DATA ;

/* Variables and functions */
#define  KRB5_PADATA_ENC_TIMESTAMP 131 
#define  KRB5_PADATA_PA_PK_OCSP_RESPONSE 130 
#define  KRB5_PADATA_PK_AS_REQ 129 
#define  KRB5_PADATA_PK_AS_REQ_WIN 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (struct rk_strpool*) ; 
 struct rk_strpool* FUNC3 (struct rk_strpool*,char*,...) ; 

__attribute__((used)) static void
FUNC4(krb5_context context,
	    krb5_kdc_configuration *config,
	    METHOD_DATA *padata)
{
    struct rk_strpool *p = NULL;
    char *str;
    size_t i;

    for (i = 0; i < padata->len; i++) {
	switch(padata->val[i].padata_type) {
	case KRB5_PADATA_PK_AS_REQ:
	    p = FUNC3(p, "PK-INIT(ietf)");
	    break;
	case KRB5_PADATA_PK_AS_REQ_WIN:
	    p = FUNC3(p, "PK-INIT(win2k)");
	    break;
	case KRB5_PADATA_PA_PK_OCSP_RESPONSE:
	    p = FUNC3(p, "OCSP");
	    break;
	case KRB5_PADATA_ENC_TIMESTAMP:
	    p = FUNC3(p, "encrypted-timestamp");
	    break;
	default:
	    p = FUNC3(p, "%d", padata->val[i].padata_type);
	    break;
	}
	if (p && i + 1 < padata->len)
	    p = FUNC3(p, ", ");
	if (p == NULL) {
	    FUNC1(context, config, 0, "out of memory");
	    return;
	}
    }
    if (p == NULL)
	p = FUNC3(p, "none");

    str = FUNC2(p);
    FUNC1(context, config, 0, "Client sent patypes: %s", str);
    FUNC0(str);
}