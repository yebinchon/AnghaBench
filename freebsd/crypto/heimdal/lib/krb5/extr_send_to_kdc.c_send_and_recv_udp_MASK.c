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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  krb5_socket_t ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(krb5_socket_t fd,
		  time_t tmout,
		  const krb5_data *req,
		  krb5_data *rep)
{
    if (FUNC1 (fd, req->data, req->length, 0) < 0)
	return -1;

    return FUNC0(fd, tmout, 1, 0, rep);
}