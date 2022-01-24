#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  attributes; } ;
struct TYPE_5__ {TYPE_1__ req_info; } ;
typedef  TYPE_2__ X509_REQ ;
typedef  int /*<<< orphan*/  X509_ATTRIBUTE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 

X509_ATTRIBUTE *FUNC1(const X509_REQ *req, int loc)
{
    return FUNC0(req->req_info.attributes, loc);
}