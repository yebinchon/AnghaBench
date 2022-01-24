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
struct TYPE_3__ {unsigned char* data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_ASN1_ITEM_UNPACK ; 
 int /*<<< orphan*/  ASN1_R_DECODE_ERROR ; 
 void* FUNC0 (int /*<<< orphan*/ *,unsigned char const**,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC2(const ASN1_STRING *oct, const ASN1_ITEM *it)
{
    const unsigned char *p;
    void *ret;

    p = oct->data;
    if ((ret = FUNC0(NULL, &p, oct->length, it)) == NULL)
        FUNC1(ASN1_F_ASN1_ITEM_UNPACK, ASN1_R_DECODE_ERROR);
    return ret;
}