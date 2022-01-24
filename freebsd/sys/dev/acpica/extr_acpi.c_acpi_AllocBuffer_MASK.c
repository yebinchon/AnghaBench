#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int Length; void* Pointer; } ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  M_ACPIDEV ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ACPI_BUFFER *
FUNC1(int size)
{
    ACPI_BUFFER	*buf;

    if ((buf = FUNC0(size + sizeof(*buf), M_ACPIDEV, M_NOWAIT)) == NULL)
	return (NULL);
    buf->Length = size;
    buf->Pointer = (void *)(buf + 1);
    return (buf);
}