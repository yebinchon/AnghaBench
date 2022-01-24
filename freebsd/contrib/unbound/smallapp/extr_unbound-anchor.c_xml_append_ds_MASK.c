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
struct xml_data {int /*<<< orphan*/  num_keys; int /*<<< orphan*/  ds; int /*<<< orphan*/  cdigest; int /*<<< orphan*/  cdigtype; int /*<<< orphan*/  calgo; int /*<<< orphan*/  ctag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(struct xml_data* data)
{
	/* write DS to accumulated DS */
	FUNC1(data->ds, ". IN DS ");
	FUNC0(data->ds, data->ctag);
	FUNC1(data->ds, " ");
	FUNC0(data->ds, data->calgo);
	FUNC1(data->ds, " ");
	FUNC0(data->ds, data->cdigtype);
	FUNC1(data->ds, " ");
	FUNC0(data->ds, data->cdigest);
	FUNC1(data->ds, "\n");
	data->num_keys++;
}