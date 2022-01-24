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
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC2(sldns_buffer* buf, size_t start)
{
	size_t end = FUNC0(buf);
	size_t i;
	int count = 0;
	int squote = 0, dquote = 0;
	for(i=start; i<end; i++) {
		char c = (char)FUNC1(buf, i);
		if(squote && c != '\'') continue;
		if(dquote && c != '"') continue;
		if(c == '"')
			dquote = !dquote; /* skip quoted part */
		else if(c == '\'')
			squote = !squote; /* skip quoted part */
		else if(c == '(')
			count ++;
		else if(c == ')')
			count --;
		else if(c == ';') {
			/* rest is a comment */
			return count;
		}
	}
	return count;
}