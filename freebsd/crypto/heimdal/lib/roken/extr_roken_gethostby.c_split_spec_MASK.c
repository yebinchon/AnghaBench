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
 int FUNC0 (char*,char*,int*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(const char *spec, char **host, int *port, char **path, int def_port)
{
    char *p;
    *host = FUNC2(spec);
    p = FUNC1(*host, ':');
    if(p) {
	*p++ = '\0';
	if(FUNC0(p, "%d", port) != 1)
	    *port = def_port;
    } else
	*port = def_port;
    p = FUNC1(p ? p : *host, '/');
    if(p) {
	if(path)
	    *path = FUNC2(p);
	*p = '\0';
    }else
	if(path)
	    *path = NULL;
}