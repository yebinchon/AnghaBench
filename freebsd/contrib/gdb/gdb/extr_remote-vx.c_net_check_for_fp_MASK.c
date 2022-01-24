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
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  scalar_t__ bool_t ;

/* Variables and functions */
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  VX_FP_INQUIRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  rpcerr ; 
 int /*<<< orphan*/  xdr_bool ; 
 int /*<<< orphan*/  xdr_void ; 

__attribute__((used)) static int
FUNC2 (void)
{
  enum clnt_stat status;
  bool_t fp = 0;		/* true if fp processor is present on target board */

  status = FUNC1 (VX_FP_INQUIRE, xdr_void, 0, xdr_bool, &fp);
  if (status != RPC_SUCCESS)
    FUNC0 (rpcerr);

  return (int) fp;
}