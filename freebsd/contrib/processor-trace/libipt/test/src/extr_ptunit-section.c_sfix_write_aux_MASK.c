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
typedef  int /*<<< orphan*/  uint8_t ;
struct section_fixture {int /*<<< orphan*/  file; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*,int,size_t,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct section_fixture *sfix,
					   const uint8_t *buffer, size_t size)
{
	size_t written;

	written = FUNC1(buffer, 1, size, sfix->file);
	FUNC3(written, size);

	FUNC0(sfix->file);

	return FUNC2();
}