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
typedef  int /*<<< orphan*/  n ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 char** FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const char* module_conf)
{
	const char** names = FUNC2();
	const char* s = module_conf;
	while(*s) {
		int i = 0;
		int is_ok = 0;
		while(*s && FUNC1((unsigned char)*s))
			s++;
		if(!*s) break;
		while(names[i]) {
			if(FUNC4(names[i], s, FUNC3(names[i])) == 0) {
				is_ok = 1;
				break;
			}
			i++;
		}
		if(is_ok == 0) {
			char n[64];
			size_t j;
			n[0]=0;
			n[sizeof(n)-1]=0;
			for(j=0; j<sizeof(n)-1; j++) {
				if(!s[j] || FUNC1((unsigned char)s[j])) {
					n[j] = 0;
					break;
				}
				n[j] = s[j];
			}
			FUNC0("module_conf lists module '%s' but that "
				"module is not available.", n);
		}
		s += FUNC3(names[i]);
	}
}