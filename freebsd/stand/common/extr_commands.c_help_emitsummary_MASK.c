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
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(char *topic, char *subtopic, char *desc)
{
	int	i;

	FUNC0("    ");
	FUNC0(topic);
	i = FUNC1(topic);
	if (subtopic != NULL) {
		FUNC0(" ");
		FUNC0(subtopic);
		i += FUNC1(subtopic) + 1;
	}
	if (desc != NULL) {
		do {
			FUNC0(" ");
		} while (i++ < 30);
		FUNC0(desc);
	}
	return (FUNC0("\n"));
}