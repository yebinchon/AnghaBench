#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ td_err_e ;
struct thread_info {TYPE_1__* private; } ;
typedef  scalar_t__ prgregset_t ;
typedef  int /*<<< orphan*/  gdb_prfpregset_t ;
typedef  int /*<<< orphan*/  gdb_gregset_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* to_store_registers ) (int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  th; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_REGISTER_SIZE ; 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,long,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct thread_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 TYPE_2__* target_beneath ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct thread_info*,int) ; 

__attribute__((used)) static void
FUNC14 (int regno)
{
  prgregset_t gregset;
  gdb_prfpregset_t fpregset;
  td_err_e err;
  struct thread_info *thread_info;

  if (!FUNC6 (inferior_ptid))
    {
      /* Pass the request to the target beneath us.  */
      target_beneath->to_store_registers (regno);
      return;
    }

  thread_info = FUNC5 (inferior_ptid);
  FUNC13 (thread_info, 1);

  if (regno != -1)
    {
      char raw[MAX_REGISTER_SIZE];

      FUNC1 (regno, raw);
      FUNC12 (-1);
      FUNC8 (regno, raw);
    }

  FUNC4 ((gdb_gregset_t *) gregset, -1);
  FUNC3 (&fpregset, -1);

  err = FUNC10 (&thread_info->private->th, gregset);
  if (err != TD_OK)
    FUNC2 ("Cannot store general-purpose registers for thread %ld: %s",
	   (long) FUNC0 (inferior_ptid), FUNC11 (err));
  err = FUNC9 (&thread_info->private->th, &fpregset);
  if (err != TD_OK)
    FUNC2 ("Cannot store floating-point registers  for thread %ld: %s",
	   (long) FUNC0 (inferior_ptid), FUNC11 (err));
}