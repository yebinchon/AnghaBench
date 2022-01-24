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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  outputFile ; 
 int outputFileOpened ; 

void
FUNC2(const char * filename) {
	// Clear the contents of the current file.
	// Open the output file
	outputFile = FUNC1(filename, "w+");
	FUNC0(outputFile);
	outputFileOpened = true;
}