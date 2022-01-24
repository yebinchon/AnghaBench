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
typedef  int u_char ;
struct sshkey {int dummy; } ;
typedef  int /*<<< orphan*/  lens ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sshkey*,struct sshkey*,char const*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sshkey*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void
FUNC4(struct sshkey *k, struct sshkey *bad, const char *sig_alg)
{
	u_char i, buf[2049];
	size_t lens[] = {
		1, 2, 7, 8, 9, 15, 16, 17, 31, 32, 33, 127, 128, 129,
		255, 256, 257, 1023, 1024, 1025, 2047, 2048, 2049
	};

	for (i = 0; i < (sizeof(lens)/sizeof(lens[0])); i++) {
		FUNC3("%s key, banana length %zu",
		    FUNC2(k), lens[i]);
		FUNC0(buf, lens[i]);
		FUNC1(k, bad, sig_alg, buf, lens[i]);
	}
}