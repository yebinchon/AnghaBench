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
typedef  enum ptracereq { ____Placeholder_ptracereq } ptracereq ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  Rptrace ;
typedef  int /*<<< orphan*/  Ptrace_return ;

/* Variables and functions */
 int RPC_SUCCESS ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xdr_ptrace_return ; 
 int /*<<< orphan*/  xdr_rptrace ; 

__attribute__((used)) static int
FUNC1 (enum ptracereq request, Rptrace *pPtraceIn,
		      Ptrace_return *pPtraceOut)
{
  enum clnt_stat status;

  status = FUNC0 (request, xdr_rptrace, pPtraceIn, xdr_ptrace_return,
			  pPtraceOut);

  if (status != RPC_SUCCESS)
    return -1;

  return 0;
}