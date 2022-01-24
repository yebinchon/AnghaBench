#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  issuer; int /*<<< orphan*/  serialNumber; } ;
typedef  TYPE_1__ X509_CINF ;
struct TYPE_6__ {TYPE_1__ cert_info; } ;
typedef  TYPE_2__ X509 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(const X509 *a, const X509 *b)
{
    int i;
    const X509_CINF *ai, *bi;

    ai = &a->cert_info;
    bi = &b->cert_info;
    i = FUNC0(&ai->serialNumber, &bi->serialNumber);
    if (i)
        return i;
    return FUNC1(ai->issuer, bi->issuer);
}