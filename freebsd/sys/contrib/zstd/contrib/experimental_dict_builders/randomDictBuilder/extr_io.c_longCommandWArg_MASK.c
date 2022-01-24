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
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,size_t const) ; 

unsigned FUNC2(const char** stringPtr, const char* longCommand){
    size_t const comSize = FUNC0(longCommand);
    int const result = !FUNC1(*stringPtr, longCommand, comSize);
    if (result) *stringPtr += comSize;
    return result;
}