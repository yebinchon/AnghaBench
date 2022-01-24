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
typedef  int /*<<< orphan*/  lu_byte ;
typedef  int /*<<< orphan*/  LoadState ;

/* Variables and functions */
 int LUAC_HEADERSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  N0 ; 
 int /*<<< orphan*/  N1 ; 
 int /*<<< orphan*/  N2 ; 
 int /*<<< orphan*/  N3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(LoadState* S)
{
 lu_byte h[LUAC_HEADERSIZE];
 lu_byte s[LUAC_HEADERSIZE];
 FUNC2(h);
 FUNC4(s,h,sizeof(char));			/* first char already read */
 FUNC0(S,s+sizeof(char),LUAC_HEADERSIZE-sizeof(char));
 if (FUNC3(h,s,N0)==0) return;
 if (FUNC3(h,s,N1)!=0) FUNC1(S,"not a");
 if (FUNC3(h,s,N2)!=0) FUNC1(S,"version mismatch in");
 if (FUNC3(h,s,N3)!=0) FUNC1(S,"incompatible"); else FUNC1(S,"corrupted");
}