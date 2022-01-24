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
struct ui_file {int dummy; } ;

/* Variables and functions */
 scalar_t__ BFD_ENDIAN_BIG ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,struct ui_file*,char) ; 
 scalar_t__ TARGET_BYTE_ORDER ; 

void
FUNC1 (struct ui_file *stream, unsigned char *valaddr, unsigned len)
{
  unsigned char *p;

  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    {
      p = valaddr;
      while (p < valaddr + len - 1 && *p == 0)
	++p;

      while (p < valaddr + len)
	{
	  FUNC0 (*p, stream, '\'');
	  ++p;
	}
    }
  else
    {
      p = valaddr + len - 1;
      while (p > valaddr && *p == 0)
	--p;

      while (p >= valaddr)
	{
	  FUNC0 (*p, stream, '\'');
	  --p;
	}
    }
}