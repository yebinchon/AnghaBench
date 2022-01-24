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
typedef  int uint8_t ;
struct config_file {int /*<<< orphan*/ * tagname; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 

char* FUNC3(struct config_file* cfg, uint8_t* taglist,
        size_t taglen)
{
	char buf[10240];
	size_t i, j, len = 0;
	buf[0] = 0;
	for(i=0; i<taglen; i++) {
		if(taglist[i] == 0)
			continue;
		for(j=0; j<8; j++) {
			if((taglist[i] & (1<<j)) != 0) {
				size_t id = i*8 + j;
				FUNC0(buf+len, sizeof(buf)-len, "%s%s",
					(len==0?"":" "), cfg->tagname[id]);
				len += FUNC2(buf+len);
			}
		}
	}
	return FUNC1(buf);
}