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
typedef  int /*<<< orphan*/  vendor ;
struct sep_identify_data {int /*<<< orphan*/  firmware_rev; int /*<<< orphan*/  product_rev; int /*<<< orphan*/  product_id; int /*<<< orphan*/  vendor_id; } ;
typedef  int /*<<< orphan*/  revision ;
typedef  int /*<<< orphan*/  product ;
typedef  int /*<<< orphan*/  fw ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,char*) ; 

void
FUNC2(struct sep_identify_data *ident_data)
{
	char vendor[9], product[17], revision[5], fw[5];

	FUNC0(vendor, ident_data->vendor_id, 8, sizeof(vendor));
	FUNC0(product, ident_data->product_id, 16, sizeof(product));
	FUNC0(revision, ident_data->product_rev, 4, sizeof(revision));
	FUNC0(fw, ident_data->firmware_rev, 4, sizeof(fw));
	FUNC1("<%s %s %s %s>", vendor, product, revision, fw);
}