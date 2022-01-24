#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int PrevSuccess; int /*<<< orphan*/  RunLength; TYPE_1__* FoundState; } ;
struct TYPE_5__ {int Freq; } ;
typedef  TYPE_2__ CPpmd7 ;
typedef  int Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC1(CPpmd7 *p)
{
  p->FoundState->Freq = (Byte)(p->FoundState->Freq + (p->FoundState->Freq < 128 ? 1: 0));
  p->PrevSuccess = 1;
  p->RunLength++;
  FUNC0(p);
}