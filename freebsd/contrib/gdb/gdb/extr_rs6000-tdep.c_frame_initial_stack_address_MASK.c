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
struct rs6000_framedata {scalar_t__ alloca_reg; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {void* initial_sp; } ;
typedef  void* CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int MAX_REGISTER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,struct rs6000_framedata*) ; 
 scalar_t__ FUNC4 (struct frame_info*,scalar_t__,char*) ; 
 void* FUNC5 (struct frame_info*) ; 
 TYPE_1__* FUNC6 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rs6000_framedata*) ; 

__attribute__((used)) static CORE_ADDR
FUNC10 (struct frame_info *fi)
{
  CORE_ADDR tmpaddr;
  struct rs6000_framedata fdata;
  struct frame_info *callee_fi;

  /* If the initial stack pointer (frame address) of this frame is known,
     just return it.  */

  if (FUNC6 (fi)->initial_sp)
    return FUNC6 (fi)->initial_sp;

  /* Find out if this function is using an alloca register.  */

  (void) FUNC9 (FUNC7 (fi), FUNC8 (fi), &fdata);

  /* If saved registers of this frame are not known yet, read and
     cache them.  */

  if (!FUNC1 (fi))
    FUNC3 (fi, &fdata);

  /* If no alloca register used, then fi->frame is the value of the %sp for
     this frame, and it is good enough.  */

  if (fdata.alloca_reg < 0)
    {
      FUNC6 (fi)->initial_sp = FUNC5 (fi);
      return FUNC6 (fi)->initial_sp;
    }

  /* There is an alloca register, use its value, in the current frame,
     as the initial stack pointer.  */
  {
    char tmpbuf[MAX_REGISTER_SIZE];
    if (FUNC4 (fi, fdata.alloca_reg, tmpbuf))
      {
	FUNC6 (fi)->initial_sp
	  = FUNC2 (tmpbuf,
				      FUNC0 (fdata.alloca_reg));
      }
    else
      /* NOTE: cagney/2002-04-17: At present the only time
         frame_register_read will fail is when the register isn't
         available.  If that does happen, use the frame.  */
      FUNC6 (fi)->initial_sp = FUNC5 (fi);
  }
  return FUNC6 (fi)->initial_sp;
}