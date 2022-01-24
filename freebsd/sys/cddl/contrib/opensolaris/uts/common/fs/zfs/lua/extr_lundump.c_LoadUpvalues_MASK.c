#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* idx; void* instack; int /*<<< orphan*/ * name; } ;
struct TYPE_9__ {int /*<<< orphan*/  L; } ;
struct TYPE_8__ {int sizeupvalues; TYPE_3__* upvalues; } ;
typedef  TYPE_1__ Proto ;
typedef  TYPE_2__ LoadState ;

/* Variables and functions */
 void* FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  Upvaldesc ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(LoadState* S, Proto* f)
{
 int i,n;
 n=FUNC1(S);
 f->upvalues=FUNC2(S->L,n,Upvaldesc);
 f->sizeupvalues=n;
 for (i=0; i<n; i++) f->upvalues[i].name=NULL;
 for (i=0; i<n; i++)
 {
  f->upvalues[i].instack=FUNC0(S);
  f->upvalues[i].idx=FUNC0(S);
 }
}