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
struct hex_options {scalar_t__ decode_flag; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 size_t FUNC5 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,scalar_t__,char**) ; 
 scalar_t__ FUNC8 (unsigned char) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 size_t FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(struct hex_options *opt, int argc, char **argv)
{

    if (opt->decode_flag) {
	char buf[1024], buf2[1024], *p;
	ssize_t len;

	while(FUNC1(buf, sizeof(buf), stdin) != NULL) {
	    buf[FUNC9(buf, "\r\n")] = '\0';
	    p = buf;
	    while(FUNC8(*(unsigned char *)p))
		p++;
	    len = FUNC6(p, buf2, FUNC10(p));
	    if (len < 0)
		FUNC0(1, "hex_decode failed");
	    if (FUNC5(buf2, 1, len, stdout) != (size_t)len)
		FUNC0(1, "fwrite failed");
	}
    } else {
        char buf[28], *p;
	ssize_t len;

	while((len = FUNC3(buf, 1, sizeof(buf), stdin)) != 0) {
	    len = FUNC7(buf, len, &p);
	    if (len < 0)
	        continue;
	    FUNC2(stdout, "%s\n", p);
	    FUNC4(p);
	}
    }
    return 0;
}