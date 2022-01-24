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
struct device_match_result {int /*<<< orphan*/  ident_data; } ;
typedef  int /*<<< orphan*/  revision ;
typedef  int /*<<< orphan*/  product ;
typedef  int /*<<< orphan*/  fw ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,char*,char*) ; 

__attribute__((used)) static int
FUNC2(struct device_match_result *dev_result, char *tmpstr)
{
	struct sep_identify_data *sid;
	char vendor[16], product[48], revision[16], fw[5];

	sid = (struct sep_identify_data *)&dev_result->ident_data;
	FUNC0(vendor, sid->vendor_id,
	    sizeof(sid->vendor_id), sizeof(vendor));
	FUNC0(product, sid->product_id,
	    sizeof(sid->product_id), sizeof(product));
	FUNC0(revision, sid->product_rev,
	    sizeof(sid->product_rev), sizeof(revision));
	FUNC0(fw, sid->firmware_rev,
	    sizeof(sid->firmware_rev), sizeof(fw));
	FUNC1(tmpstr, "<%s %s %s %s>", vendor, product, revision, fw);

	return (0);
}