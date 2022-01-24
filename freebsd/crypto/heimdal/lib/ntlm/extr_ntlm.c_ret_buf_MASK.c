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
struct sec_buffer {int /*<<< orphan*/  offset; int /*<<< orphan*/  length; } ;
struct ntlm_buf {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_storage *sp, struct sec_buffer *desc, struct ntlm_buf *buf)
{
    krb5_error_code ret;

    buf->data = FUNC3(desc->length);
    buf->length = desc->length;
    FUNC0(FUNC2(sp, desc->offset, SEEK_SET), desc->offset);
    FUNC0(FUNC1(sp, buf->data, buf->length), buf->length);
    ret = 0;
out:
    return ret;
}