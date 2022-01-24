#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ifmedia_type_to_subtype {TYPE_1__* options; } ;
struct ifmedia_description {char* ifmt_string; int ifmt_word; } ;
struct TYPE_2__ {struct ifmedia_description* desc; scalar_t__ alias; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ifmedia_type_to_subtype* FUNC1 (int) ; 
 size_t FUNC2 (char*,char*,size_t) ; 

void
FUNC3(int ifmw, char *buf, size_t buflen)
{
	struct ifmedia_type_to_subtype *ttos;
	struct ifmedia_description *desc;
	int i, seen_option = 0;
	size_t len;

	FUNC0(buflen > 0);
	buf[0] = '\0';
	ttos = FUNC1(ifmw);
	for (i = 0; ttos->options[i].desc != NULL; i++) {
		if (ttos->options[i].alias) {
			continue;
		}
		for (desc = ttos->options[i].desc;
		    desc->ifmt_string != NULL; desc++) {
			if (ifmw & desc->ifmt_word) {
				if (seen_option++) {
					FUNC2(buf, ",", buflen);
				}
				len = FUNC2(buf, desc->ifmt_string, buflen);
				FUNC0(len < buflen);
				buf += len;
				buflen -= len;
			}
		}
	}
}