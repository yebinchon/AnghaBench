#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int BaseHi; int BaseMid; int LimitHi; int Type; int Dpl; scalar_t__ Granularity; scalar_t__ Default_Big; int /*<<< orphan*/  Pres; } ;
struct TYPE_6__ {TYPE_1__ Bits; } ;
struct TYPE_7__ {int BaseLow; int LimitLow; TYPE_2__ HighWord; } ;
typedef  TYPE_3__ LDT_ENTRY ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3 (HANDLE thread, DWORD sel)
{
  LDT_ENTRY info;
  if (FUNC0 (thread, sel, &info))
    {
      int base, limit;
      FUNC1 ("0x%03lx: ", sel);
      if (!info.HighWord.Bits.Pres)
	{
	  FUNC2 ("Segment not present\n");
	  return 0;
	}
      base = (info.HighWord.Bits.BaseHi << 24) +
	     (info.HighWord.Bits.BaseMid << 16)
	     + info.BaseLow;
      limit = (info.HighWord.Bits.LimitHi << 16) + info.LimitLow;
      if (info.HighWord.Bits.Granularity)
	limit = (limit << 12) | 0xfff;
      FUNC1 ("base=0x%08x limit=0x%08x", base, limit);
      if (info.HighWord.Bits.Default_Big)
	FUNC2(" 32-bit ");
      else
	FUNC2(" 16-bit ");
      switch ((info.HighWord.Bits.Type & 0xf) >> 1)
	{
	case 0:
	  FUNC2 ("Data (Read-Only, Exp-up");
	  break;
	case 1:
	  FUNC2 ("Data (Read/Write, Exp-up");
	  break;
	case 2:
	  FUNC2 ("Unused segment (");
	  break;
	case 3:
	  FUNC2 ("Data (Read/Write, Exp-down");
	  break;
	case 4:
	  FUNC2 ("Code (Exec-Only, N.Conf");
	  break;
	case 5:
	  FUNC2 ("Code (Exec/Read, N.Conf");
	  break;
	case 6:
	  FUNC2 ("Code (Exec-Only, Conf");
	  break;
	case 7:
	  FUNC2 ("Code (Exec/Read, Conf");
	  break;
	default:
	  FUNC1 ("Unknown type 0x%x",info.HighWord.Bits.Type);
	}
      if ((info.HighWord.Bits.Type & 0x1) == 0)
	FUNC2(", N.Acc");
      FUNC2 (")\n");
      if ((info.HighWord.Bits.Type & 0x10) == 0)
	FUNC2("System selector ");
      FUNC1 ("Priviledge level = %d. ", info.HighWord.Bits.Dpl);
      if (info.HighWord.Bits.Granularity)
	FUNC2 ("Page granular.\n");
      else
	FUNC2 ("Byte granular.\n");
      return 1;
    }
  else
    {
      FUNC1 ("Invalid selector 0x%lx.\n",sel);
      return 0;
    }
}