#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
struct TYPE_9__ {int length; unsigned char* data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
		    const krb5_crypto crypto,
		    const krb5_data *input,
		    size_t length,
		    krb5_data *output)
{
    krb5_error_code ret;
    krb5_data input2;
    unsigned char i = 1;
    unsigned char *p;

    FUNC4(&input2);
    FUNC4(output);

    FUNC0(context);

    ret = FUNC2(output, length);
    if (ret) goto out;
    ret = FUNC2(&input2, input->length + 1);
    if (ret) goto out;

    FUNC0(context);

    FUNC5(((unsigned char *)input2.data) + 1, input->data, input->length);

    p = output->data;

    while (length) {
	krb5_data block;

	((unsigned char *)input2.data)[0] = i++;

	ret = FUNC1(context, crypto, &input2, &block);
	if (ret)
	    goto out;

	if (block.length < length) {
	    FUNC5(p, block.data, block.length);
	    length -= block.length;
	} else {
	    FUNC5(p, block.data, length);
	    length = 0;
	}
	p += block.length;
	FUNC3(&block);
    }

 out:
    FUNC3(&input2);
    if (ret)
	FUNC3(output);
    return 0;
}