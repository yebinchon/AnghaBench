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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  size ;
typedef  int /*<<< orphan*/  ptr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EINVAL ; 
#define  IOCTL_MBOX_PROPERTY 128 
 int /*<<< orphan*/  M_VCIO ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (int*,int) ; 
 int FUNC1 (void*,int*,int) ; 
 int FUNC2 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**,int /*<<< orphan*/ ,int) ; 

int
FUNC6(struct cdev *dev, u_long cmd, caddr_t arg, int mode,
    struct thread *td)
{
    int error;
    void *ptr;
    uint32_t size;
    uint8_t *property;

    error = 0;
    switch(cmd) {
    case IOCTL_MBOX_PROPERTY:
    	FUNC5 (&ptr, arg, sizeof(ptr));
	error = FUNC1(ptr, &size, sizeof(size));

	if (error != 0)
		break;
	property = FUNC4(size, M_VCIO, M_WAITOK);

	error = FUNC1(ptr, property, size);
	if (error) {
		FUNC3(property, M_VCIO);
		break;
	}

	error = FUNC0(property, size);
	if (error) {
		FUNC3(property, M_VCIO);
		break;
	}

	error = FUNC2(property, ptr, size);
	FUNC3(property, M_VCIO);

	break;
    default:
	error = EINVAL;
	break;
    }
    return (error);
}