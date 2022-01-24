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
struct archive_mstring {int /*<<< orphan*/  aes_utf8; int /*<<< orphan*/  aes_wcs; int /*<<< orphan*/  aes_mbs; scalar_t__ aes_set; } ;

/* Variables and functions */
 scalar_t__ AES_SET_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*) ; 

int
FUNC3(struct archive_mstring *aes, const char *utf8)
{
  if (utf8 == NULL) {
    aes->aes_set = 0;
    return (0);
  }
  aes->aes_set = AES_SET_UTF8;
  FUNC0(&(aes->aes_mbs));
  FUNC0(&(aes->aes_wcs));
  FUNC1(&(aes->aes_utf8), utf8, FUNC2(utf8));
  return (int)FUNC2(utf8);
}