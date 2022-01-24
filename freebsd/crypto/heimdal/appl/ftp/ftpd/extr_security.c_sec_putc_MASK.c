#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int index; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 scalar_t__ data_prot ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ out_buffer ; 
 scalar_t__ prot_clear ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC4(int c, FILE *F)
{
    char ch = c;
    if(data_prot == prot_clear)
	return FUNC2(c, F);

    FUNC0(&out_buffer, &ch, 1);
    if(c == '\n' || out_buffer.index >= 1024 /* XXX */) {
	FUNC3(FUNC1(F), out_buffer.data, out_buffer.index);
	out_buffer.index = 0;
    }
    return c;
}