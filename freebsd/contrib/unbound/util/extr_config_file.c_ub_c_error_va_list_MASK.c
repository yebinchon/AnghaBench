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
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_2__ {char* filename; int line; int /*<<< orphan*/  errors; } ;

/* Variables and functions */
 TYPE_1__* cfg_parser ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const char *fmt, va_list args)
{
	cfg_parser->errors++;
	FUNC0(stderr, "%s:%d: error: ", cfg_parser->filename,
	cfg_parser->line);
	FUNC1(stderr, fmt, args);
	FUNC0(stderr, "\n");
}