#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int8_t ;
typedef  scalar_t__ u_int32_t ;
struct hid_item {scalar_t__ report_ID; int kind; int flags; scalar_t__ usage; } ;
struct hid_data {int dummy; } ;
typedef  enum hid_kind { ____Placeholder_hid_kind } hid_kind ;

/* Variables and functions */
 int HIO_CONST ; 
 int /*<<< orphan*/  FUNC0 (struct hid_data*) ; 
 scalar_t__ FUNC1 (struct hid_data*,struct hid_item*) ; 
 struct hid_data* FUNC2 (void const*,int,int) ; 

__attribute__((used)) static int
FUNC3(const void *desc, int size, u_int32_t u, u_int8_t id,
    enum hid_kind k, struct hid_item *hip)
{
	struct hid_data *d;
	struct hid_item h;

	h.report_ID = 0;
	for (d = FUNC2(desc, size, k); FUNC1(d, &h); ) {
		if (h.kind == k && !(h.flags & HIO_CONST) &&
		    (/*XXX*/uint32_t)h.usage == u && h.report_ID == id) {
			if (hip != NULL)
				*hip = h;
			FUNC0(d);
			return (1);
		}
	}
	FUNC0(d);
	return (0);
}