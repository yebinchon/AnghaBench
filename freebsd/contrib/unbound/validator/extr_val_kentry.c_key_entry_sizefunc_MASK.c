#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct key_entry_key {int namelen; TYPE_1__ entry; } ;
struct key_entry_data {char* reason; scalar_t__ algo; scalar_t__ rrset_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 

size_t 
FUNC3(void* key, void* data)
{
	struct key_entry_key* kk = (struct key_entry_key*)key;
	struct key_entry_data* kd = (struct key_entry_data*)data;
	size_t s = sizeof(*kk) + kk->namelen;
	s += sizeof(*kd) + FUNC0(&kk->entry.lock);
	if(kd->rrset_data)
		s += FUNC1(kd->rrset_data);
	if(kd->reason)
		s += FUNC2(kd->reason)+1;
	if(kd->algo)
		s += FUNC2((char*)kd->algo)+1;
	return s;
}