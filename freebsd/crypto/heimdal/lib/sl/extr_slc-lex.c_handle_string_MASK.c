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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  lineno ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3(void)
{
    char x[1024];
    int i = 0;
    int c;
    int quote = 0;
    while((c = FUNC1()) != EOF){
	if(quote) {
	    x[i++] = '\\';
	    x[i++] = c;
	    quote = 0;
	    continue;
	}
	if(c == '\n'){
	    FUNC0("unterminated string");
	    lineno++;
	    break;
	}
	if(c == '\\'){
	    quote++;
	    continue;
	}
	if(c == '\"')
	    break;
	x[i++] = c;
    }
    x[i] = '\0';
    return FUNC2(x);
}