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
struct opie_otpkey {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct opie_otpkey*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct opie_otpkey*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct opie_otpkey*,int) ; 

int FUNC3()
{
  static unsigned char testin[] = { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef };
  static unsigned char testout[] = { 0x78, 0xdd, 0x1a, 0x37, 0xf8, 0x91, 0x54, 0xe1 };
  struct opie_otpkey testin_aligned;

  FUNC1(&testin_aligned, testin, sizeof(struct opie_otpkey));

  FUNC2(&testin_aligned, 5);

  if (FUNC0(&testin_aligned, testout, sizeof(struct opie_otpkey)))
    return -1;

  return 0;
}