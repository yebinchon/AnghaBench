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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int init_flags; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ cvmx_usb_internal_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CVMX_USB_INITIALIZE_FLAGS_DEBUG_CSRS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(cvmx_usb_internal_state_t *usb,
                                          uint64_t address, uint32_t value)
{
#if ALLOW_CSR_DECODES
    if (cvmx_unlikely(usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_DEBUG_CSRS))
    {
        cvmx_dprintf("Write: ");
        cvmx_csr_db_decode(cvmx_get_proc_id(), address, value);
    }
#endif
    FUNC6(address ^ 4, value);
    FUNC4(FUNC0(usb->index));
}