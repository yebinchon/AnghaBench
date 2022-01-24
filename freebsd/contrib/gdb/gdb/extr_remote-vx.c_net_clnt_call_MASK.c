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
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  enum ptracereq { ____Placeholder_ptracereq } ptracereq ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;

/* Variables and functions */
 int RPC_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  pClient ; 
 int /*<<< orphan*/  rpcTimeout ; 

__attribute__((used)) static enum clnt_stat
FUNC2 (enum ptracereq procNum, xdrproc_t inProc, char *in,
	       xdrproc_t outProc, char *out)
{
  enum clnt_stat status;

  status = FUNC0 (pClient, procNum, inProc, in, outProc, out, rpcTimeout);

  if (status != RPC_SUCCESS)
    FUNC1 (status);

  return status;
}