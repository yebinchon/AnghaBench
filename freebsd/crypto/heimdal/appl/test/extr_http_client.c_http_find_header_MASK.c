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
struct http_req {int num_headers; char const** headers; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static const char *
FUNC2(struct http_req *req, const char *header)
{
    int i, len = FUNC0(header);

    for (i = 0; i < req->num_headers; i++) {
	if (FUNC1(header, req->headers[i], len) == 0) {
	    return req->headers[i] + len + 1;
	}
    }
    return NULL;
}