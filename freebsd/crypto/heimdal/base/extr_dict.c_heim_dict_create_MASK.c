#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* heim_dict_t ;
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/ * tab; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  dict_object ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

heim_dict_t
FUNC4(size_t size)
{
    heim_dict_t dict;

    dict = FUNC0(&dict_object, sizeof(*dict));

    dict->size = FUNC2(size);
    if (dict->size == 0) {
	FUNC3(dict);
	return NULL;
    }

    dict->tab = FUNC1(dict->size, sizeof(dict->tab[0]));
    if (dict->tab == NULL) {
	dict->size = 0;
	FUNC3(dict);
	return NULL;
    }

    return dict;
}