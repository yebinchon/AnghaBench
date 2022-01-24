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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(int n, char *c, const char *fmt, va_list ap)
{
    char buf[10240];
    char *p;
    p=buf;
    if(n){
	FUNC2(p, sizeof(buf), "%d%s", n, c);
	p+=FUNC3(p);
    }
    FUNC5(p, sizeof(buf) - FUNC3(p), fmt, ap);
    p+=FUNC3(p);
    FUNC2(p, sizeof(buf) - FUNC3(p), "\r\n");
    p+=FUNC3(p);
    FUNC1(stdout, "%s", buf);
    FUNC0(stdout);
    if (debug)
	FUNC4(LOG_DEBUG, "<--- %s- ", buf);
}