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
typedef  int /*<<< orphan*/  _U_SINT ;
typedef  scalar_t__ UNITY_LINE_TYPE ;
struct TYPE_2__ {char const* CurrentTestName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 TYPE_1__ Unity ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const char* file, const UNITY_LINE_TYPE line)
{
    FUNC1(file);
    FUNC0(':');
    FUNC2((_U_SINT)line);
    FUNC0(':');
    FUNC1(Unity.CurrentTestName);
    FUNC0(':');
}