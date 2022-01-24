#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_object {int object_handle; } ;
struct TYPE_3__ {int num_objs; struct st_object** objs; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int OBJECT_ID_MASK ; 
 struct st_object* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct st_object*) ; 
 int FUNC2 () ; 
 struct st_object** FUNC3 (struct st_object**,int) ; 
 TYPE_2__ soft_token ; 

__attribute__((used)) static struct st_object *
FUNC4(void)
{
    struct st_object *o, **objs;
    int i;

    o = FUNC0(1, sizeof(*o));
    if (o == NULL)
	return NULL;

    for (i = 0; i < soft_token.object.num_objs; i++) {
	if (soft_token.object.objs == NULL) {
	    soft_token.object.objs[i] = o;
	    break;
	}
    }
    if (i == soft_token.object.num_objs) {
	objs = FUNC3(soft_token.object.objs,
		       (soft_token.object.num_objs + 1) * sizeof(soft_token.object.objs[0]));
	if (objs == NULL) {
	    FUNC1(o);
	    return NULL;
	}
	soft_token.object.objs = objs;
	soft_token.object.objs[soft_token.object.num_objs++] = o;
    }
    soft_token.object.objs[i]->object_handle =
	(FUNC2() & (~OBJECT_ID_MASK)) | i;

    return o;
}