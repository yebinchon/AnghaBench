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
struct TYPE_3__ {scalar_t__ flags; int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;
typedef  TYPE_1__ ASN1_OCTET_STRING ;

/* Variables and functions */
 scalar_t__ ASN1_STRING_FLAG_CONT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__** FUNC4 (int /*<<< orphan*/ *) ; 

BIO *FUNC5(CMS_ContentInfo *cms)
{
    ASN1_OCTET_STRING **pos = FUNC4(cms);
    if (!pos)
        return NULL;
    /* If content detached data goes nowhere: create NULL BIO */
    if (!*pos)
        return FUNC0(FUNC3());
    /*
     * If content not detached and created return memory BIO
     */
    if (!*pos || ((*pos)->flags == ASN1_STRING_FLAG_CONT))
        return FUNC0(FUNC2());
    /* Else content was read in: return read only BIO for it */
    return FUNC1((*pos)->data, (*pos)->length);
}