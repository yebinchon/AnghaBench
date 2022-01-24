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
struct ntlm_buf {size_t length; unsigned char* data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 size_t UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ntlm_buf*) ; 
 unsigned char* FUNC1 (size_t) ; 
 size_t FUNC2 (char const*) ; 
 unsigned char FUNC3 (unsigned char) ; 

__attribute__((used)) static int
FUNC4(const char *string, int up, struct ntlm_buf *buf)
{
    unsigned char *p;
    size_t len, i;

    len = FUNC2(string);
    if (len / 2 > UINT_MAX)
	return ERANGE;

    buf->length = len * 2;
    buf->data = FUNC1(buf->length);
    if (buf->data == NULL && len != 0) {
	FUNC0(buf);
	return ENOMEM;
    }

    p = buf->data;
    for (i = 0; i < len; i++) {
	unsigned char t = (unsigned char)string[i];
	if (t & 0x80) {
	    FUNC0(buf);
	    return EINVAL;
	}
	if (up)
	    t = FUNC3(t);
	p[(i * 2) + 0] = t;
	p[(i * 2) + 1] = 0;
    }
    return 0;
}