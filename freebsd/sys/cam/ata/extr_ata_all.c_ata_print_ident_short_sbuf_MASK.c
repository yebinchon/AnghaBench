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
struct ata_params {int /*<<< orphan*/  revision; int /*<<< orphan*/  model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 

void
FUNC2(struct ata_params *ident_data, struct sbuf *sb)
{

	FUNC1(sb, "<");
	FUNC0(sb, ident_data->model, sizeof(ident_data->model), 0);
	FUNC1(sb, " ");
	FUNC0(sb, ident_data->revision, sizeof(ident_data->revision), 0);
	FUNC1(sb, ">");
}