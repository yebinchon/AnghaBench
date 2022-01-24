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
typedef  int /*<<< orphan*/  u_int32_t ;
struct aac_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ AAC_SA_MAILBOX ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  FUNC1 (struct aac_softc*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct aac_softc *sc, u_int32_t command,
		u_int32_t arg0, u_int32_t arg1, u_int32_t arg2, u_int32_t arg3)
{
	FUNC1(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	FUNC0(sc, AAC_SA_MAILBOX, command);
	FUNC0(sc, AAC_SA_MAILBOX + 4, arg0);
	FUNC0(sc, AAC_SA_MAILBOX + 8, arg1);
	FUNC0(sc, AAC_SA_MAILBOX + 12, arg2);
	FUNC0(sc, AAC_SA_MAILBOX + 16, arg3);
}