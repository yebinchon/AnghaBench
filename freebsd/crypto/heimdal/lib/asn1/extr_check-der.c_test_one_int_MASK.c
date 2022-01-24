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

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int FUNC1 (unsigned char*,size_t,int*,size_t*) ; 
 int FUNC2 (unsigned char*,size_t,int*,size_t*) ; 
 unsigned char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 

__attribute__((used)) static int
FUNC7(int val)
{
    int ret, dval;
    unsigned char *buf;
    size_t len_len, len;

    len = FUNC0(val);

    buf = FUNC3(len + 2);

    buf[0] = '\xff';
    buf[len + 1] = '\xff';
    FUNC5(buf + 1, 0, len);

    ret = FUNC2(buf + 1 + len - 1, len, &val, &len_len);
    if (ret) {
	FUNC6("integer %d encode failed %d\n", val, ret);
	return 1;
    }
    if (len != len_len) {
	FUNC6("integer %d encode fail with %d len %lu, result len %lu\n",
	       val, ret, (unsigned long)len, (unsigned long)len_len);
	return 1;
    }

    ret = FUNC1(buf + 1, len, &dval, &len_len);
    if (ret) {
	FUNC6("integer %d decode failed %d\n", val, ret);
	return 1;
    }
    if (len != len_len) {
	FUNC6("integer %d decoded diffrent len %lu != %lu",
	       val, (unsigned long)len, (unsigned long)len_len);
	return 1;
    }
    if (val != dval) {
	FUNC6("decode decoded to diffrent value %d != %d",
	       val, dval);
	return 1;
    }

    if (buf[0] != (unsigned char)'\xff') {
	FUNC6("precanary dead %d\n", val);
	return 1;
    }
    if (buf[len + 1] != (unsigned char)'\xff') {
	FUNC6("postecanary dead %d\n", val);
	return 1;
    }
    FUNC4(buf);
    return 0;
}