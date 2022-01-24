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
typedef  int /*<<< orphan*/  i ;
typedef  int /*<<< orphan*/  buf ;
typedef  char DesData ;
typedef  int /*<<< orphan*/  DES_key_schedule ;

/* Variables and functions */
 int /*<<< orphan*/  DES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* hextab ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*) ; 

void
FUNC4(char *in, char *out, DesData *key)
{
	char buf[256];
	DesData i;
	DES_key_schedule k;
	int l,op,deslen;

	FUNC2(&i,0,sizeof(i));
	FUNC2(buf,0,sizeof(buf));
	deslen = ((FUNC3(in) + 7)/8)*8;
	FUNC1(key, &k);
	FUNC0(in, buf, deslen, &k, &i, DES_ENCRYPT);
	for (l=0,op=0;l<deslen;l++) {
		out[op++] = hextab[(buf[l] & 0xf0) >> 4];
		out[op++] = hextab[(buf[l] & 0x0f)];
	}
	out[op] = '\0';
}