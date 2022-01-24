#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  krb5_principal ;
struct TYPE_3__ {scalar_t__ length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC2 (krb5_context context,
			   krb5_principal principal,
			   krb5_data *pwd,
			   const char *opaque,
			   char *message,
			   size_t length)
{
    uint32_t min_length = FUNC0(context, NULL, 6,
						      "password_quality",
						      "min_length",
						      NULL);

    if (pwd->length < min_length) {
	FUNC1(message, "Password too short", length);
	return 1;
    } else
	return 0;
}