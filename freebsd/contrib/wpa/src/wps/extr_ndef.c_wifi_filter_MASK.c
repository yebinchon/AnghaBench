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
struct ndef_record {scalar_t__ type_length; int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wifi_handover_type ; 

__attribute__((used)) static int FUNC2(struct ndef_record *record)
{
	if (record->type == NULL ||
	    record->type_length != FUNC1(wifi_handover_type))
		return 0;
	if (FUNC0(record->type, wifi_handover_type,
		      FUNC1(wifi_handover_type)) != 0)
		return 0;
	return 1;
}