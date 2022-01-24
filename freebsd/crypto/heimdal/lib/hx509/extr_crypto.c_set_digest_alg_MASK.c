#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_6__ {size_t length; struct TYPE_6__* data; } ;
struct TYPE_5__ {TYPE_3__* parameters; int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_1__ DigestAlgorithmIdentifier ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,void const*,size_t) ; 

__attribute__((used)) static int
FUNC4(DigestAlgorithmIdentifier *id,
	       const heim_oid *oid,
	       const void *param, size_t length)
{
    int ret;
    if (param) {
	id->parameters = FUNC2(sizeof(*id->parameters));
	if (id->parameters == NULL)
	    return ENOMEM;
	id->parameters->data = FUNC2(length);
	if (id->parameters->data == NULL) {
	    FUNC1(id->parameters);
	    id->parameters = NULL;
	    return ENOMEM;
	}
	FUNC3(id->parameters->data, param, length);
	id->parameters->length = length;
    } else
	id->parameters = NULL;
    ret = FUNC0(oid, &id->algorithm);
    if (ret) {
	if (id->parameters) {
	    FUNC1(id->parameters->data);
	    FUNC1(id->parameters);
	    id->parameters = NULL;
	}
	return ret;
    }
    return 0;
}