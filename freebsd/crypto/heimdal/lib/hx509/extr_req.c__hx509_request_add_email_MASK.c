#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  TYPE_3__* hx509_request ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_1__ dNSName; } ;
struct TYPE_11__ {TYPE_2__ u; int /*<<< orphan*/  element; } ;
struct TYPE_10__ {int /*<<< orphan*/  san; } ;
typedef  TYPE_4__ GeneralName ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  choice_GeneralName_rfc822Name ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int
FUNC4(hx509_context context,
			 hx509_request req,
			 const char *email)
{
    GeneralName name;

    FUNC1(&name, 0, sizeof(name));
    name.element = choice_GeneralName_rfc822Name;
    name.u.dNSName.data = FUNC2(email);
    name.u.dNSName.length = FUNC3(email);

    return FUNC0(&req->san, &name);
}