#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_4__* desc; TYPE_4__* name; } ;
struct TYPE_8__ {TYPE_4__* pem_name; int /*<<< orphan*/  blob; } ;
struct TYPE_9__ {int /*<<< orphan*/  crl; int /*<<< orphan*/  x509; int /*<<< orphan*/  pkey; int /*<<< orphan*/  params; TYPE_1__ name; TYPE_2__ embedded; } ;
struct TYPE_10__ {int type; TYPE_3__ _; } ;
typedef  TYPE_4__ OSSL_STORE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
#define  OSSL_STORE_INFO_CERT 133 
#define  OSSL_STORE_INFO_CRL 132 
#define  OSSL_STORE_INFO_EMBEDDED 131 
#define  OSSL_STORE_INFO_NAME 130 
#define  OSSL_STORE_INFO_PARAMS 129 
#define  OSSL_STORE_INFO_PKEY 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(OSSL_STORE_INFO *info)
{
    if (info != NULL) {
        switch (info->type) {
        case OSSL_STORE_INFO_EMBEDDED:
            FUNC0(info->_.embedded.blob);
            FUNC2(info->_.embedded.pem_name);
            break;
        case OSSL_STORE_INFO_NAME:
            FUNC2(info->_.name.name);
            FUNC2(info->_.name.desc);
            break;
        case OSSL_STORE_INFO_PARAMS:
            FUNC1(info->_.params);
            break;
        case OSSL_STORE_INFO_PKEY:
            FUNC1(info->_.pkey);
            break;
        case OSSL_STORE_INFO_CERT:
            FUNC4(info->_.x509);
            break;
        case OSSL_STORE_INFO_CRL:
            FUNC3(info->_.crl);
            break;
        }
        FUNC2(info);
    }
}