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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_5__ {TYPE_1__* issuer_and_serial; } ;
struct TYPE_4__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  issuer; } ;
typedef  TYPE_2__ PKCS7_RECIP_INFO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(PKCS7_RECIP_INFO *ri, X509 *pcert)
{
    int ret;
    ret = FUNC1(ri->issuer_and_serial->issuer,
                        FUNC2(pcert));
    if (ret)
        return ret;
    return FUNC0(FUNC3(pcert),
                            ri->issuer_and_serial->serial);
}