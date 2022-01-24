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
struct _krb5_key_data {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_1__ checksum; } ;
typedef  TYPE_2__ Checksum ;

/* Variables and functions */
 int FUNC0 (void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static krb5_error_code
FUNC3(krb5_context context,
	      struct _krb5_key_data *key,
	      const void *data,
	      size_t len,
	      unsigned usage,
	      Checksum *C)
{
    if (FUNC0(data, len, C->checksum.data, NULL, FUNC1(), NULL) != 1)
	FUNC2(context, "sha1 checksum failed");
    return 0;
}