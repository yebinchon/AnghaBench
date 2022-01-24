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
typedef  int /*<<< orphan*/  symbolAddr ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_3__ {int status; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ SYMBOL_ADDR ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  VX_SYMBOL_INQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 int /*<<< orphan*/  xdr_SYMBOL_ADDR ; 
 int /*<<< orphan*/  xdr_wrapstring ; 

__attribute__((used)) static int
FUNC3 (char *name,	/* symbol name */
		  CORE_ADDR *pAddr)
{
  enum clnt_stat status;
  SYMBOL_ADDR symbolAddr;

  *pAddr = 0;
  FUNC1 ((char *) &symbolAddr, '\0', sizeof (symbolAddr));

  status = FUNC2 (VX_SYMBOL_INQ, xdr_wrapstring, &name,
			  xdr_SYMBOL_ADDR, &symbolAddr);
  if (status != RPC_SUCCESS)
    {
      FUNC0 (&symfile_complaints, "Lost contact with VxWorks target");
      return -1;
    }

  *pAddr = symbolAddr.addr;
  return symbolAddr.status;
}