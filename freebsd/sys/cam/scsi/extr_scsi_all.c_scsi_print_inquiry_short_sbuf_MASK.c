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
struct scsi_inquiry_data {int /*<<< orphan*/  revision; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 

void
FUNC2(struct sbuf *sb, struct scsi_inquiry_data *inq_data)
{

	FUNC1(sb, "<");
	FUNC0(sb, inq_data->vendor, sizeof(inq_data->vendor), 0);
	FUNC1(sb, " ");
	FUNC0(sb, inq_data->product, sizeof(inq_data->product), 0);
	FUNC1(sb, " ");
	FUNC0(sb, inq_data->revision, sizeof(inq_data->revision), 0);
	FUNC1(sb, "> ");
}