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
struct _krb5_key_data {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  Checksum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct _krb5_key_data*,void const*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC2(krb5_context context,
		      struct _krb5_key_data *key,
		      const void *data,
		      size_t len,
		      unsigned usage,
		      Checksum *C)
{
    return FUNC1(context, FUNC0(), key, data, len, C);
}