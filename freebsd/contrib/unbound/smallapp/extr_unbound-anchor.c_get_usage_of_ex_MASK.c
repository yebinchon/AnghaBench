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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_4__ {int length; unsigned long* data; } ;
typedef  TYPE_1__ ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  NID_key_usage ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long
FUNC2(X509* cert)
{
	unsigned long val = 0;
	ASN1_BIT_STRING* s;
	if((s=FUNC1(cert, NID_key_usage, NULL, NULL))) {
		if(s->length > 0) {
			val = s->data[0];
			if(s->length > 1)
				val |= s->data[1] << 8;
		}
		FUNC0(s);
	}
	return val;
}