#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  krb5_socket_t ;
struct TYPE_7__ {char* data; int length; } ;
typedef  TYPE_1__ krb5_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long*,int) ; 
 int FUNC1 (char**,char*,char const*,char*) ; 
 int FUNC2 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,char*) ; 

__attribute__((used)) static int
FUNC12(krb5_socket_t fd,
		   time_t tmout,
		   const char *prefix,
		   const krb5_data *req,
		   krb5_data *rep)
{
    char *request = NULL;
    char *str;
    int ret;
    int len = FUNC2(req->data, req->length, &str);

    if(len < 0)
	return -1;
    ret = FUNC1(&request, "GET %s%s HTTP/1.0\r\n\r\n", prefix, str);
    FUNC3(str);
    if (ret < 0 || request == NULL)
	return -1;
    ret = FUNC7 (fd, request, FUNC10(request));
    FUNC3 (request);
    if (ret < 0)
	return ret;
    ret = FUNC9(fd, tmout, 0, 0, rep);
    if(ret)
	return ret;
    {
	unsigned long rep_len;
	char *s, *p;

	s = FUNC8(rep->data, rep->length + 1);
	if (s == NULL) {
	    FUNC4 (rep);
	    return -1;
	}
	s[rep->length] = 0;
	p = FUNC11(s, "\r\n\r\n");
	if(p == NULL) {
	    FUNC5(rep);
	    FUNC3(s);
	    return -1;
	}
	p += 4;
	rep->data = s;
	rep->length -= p - s;
	if(rep->length < 4) { /* remove length */
	    FUNC5(rep);
	    FUNC3(s);
	    return -1;
	}
	rep->length -= 4;
	FUNC0(p, &rep_len, 4);
	if (rep_len != rep->length) {
	    FUNC5(rep);
	    FUNC3(s);
	    return -1;
	}
	FUNC6(rep->data, p + 4, rep->length);
    }
    return 0;
}