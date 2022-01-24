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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_transportid_header {int dummy; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 struct sbuf* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*,struct scsi_transportid_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC6(uint8_t *buf, uint32_t len)
{
	struct sbuf *sb;

	sb = FUNC4();
	if (sb == NULL)
		FUNC0(stderr, "Unable to allocate sbuf\n");

	FUNC5(sb, (struct scsi_transportid_header *)buf, len);

	FUNC3(sb);

	FUNC0(stdout, "%s\n", FUNC1(sb));

	FUNC2(sb);
}