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
 int /*<<< orphan*/  DES_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*) ; 

void
FUNC4(char *in, char *out, DesData *key)
{
	char buf[256];
	DesData i;
	DES_key_schedule k;
	int n1,n2,op;
	size_t l;

	FUNC2(&i,0,sizeof(i));
	FUNC2(buf,0,sizeof(buf));
	for (l=0,op=0;l<FUNC3(in)/2;l++,op+=2) {
		if (in[op] > '9')
			n1 = in[op] - 'A' + 10;
		else
			n1 = in[op] - '0';
		if (in[op+1] > '9')
			n2 = in[op+1] - 'A' + 10;
		else
			n2 = in[op+1] - '0';
		buf[l] = n1*16 +n2;
	}
	FUNC1(key, &k);
	FUNC0(buf, out, FUNC3(in) / 2, &k, &i, DES_DECRYPT);
	out[FUNC3(in)/2] = '\0';
}