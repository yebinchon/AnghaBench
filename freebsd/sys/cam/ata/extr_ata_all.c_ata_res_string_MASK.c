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
struct sbuf {int dummy; } ;
struct ata_res {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC0 (struct ata_res*,struct sbuf*) ; 
 char* FUNC1 (struct sbuf*) ; 
 int FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*,size_t,int /*<<< orphan*/ ) ; 

char *
FUNC4(struct ata_res *res, char *res_string, size_t len)
{
	struct sbuf sb;
	int error;

	if (len == 0)
		return ("");

	FUNC3(&sb, res_string, len, SBUF_FIXEDLEN);
	FUNC0(res, &sb);

	error = FUNC2(&sb);
	if (error != 0 && error != ENOMEM)
		return ("");

	return(FUNC1(&sb));
}