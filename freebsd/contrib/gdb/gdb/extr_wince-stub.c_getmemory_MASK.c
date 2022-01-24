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
typedef  scalar_t__ gdb_wince_len ;
typedef  int /*<<< orphan*/  gdb_wince_id ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static LPWSTR
FUNC4 (LPCWSTR huh, int s, gdb_wince_id what, gdb_wince_len *inlen)
{
  LPVOID p;
  gdb_wince_len dummy;

  if (!inlen)
    inlen = &dummy;

  *inlen = FUNC0 (huh, s, what);

  p = FUNC1 ((unsigned int) *inlen);	/* FIXME: check for error */

  if ((gdb_wince_len) FUNC2 (huh, s, p, *inlen) != *inlen)
    FUNC3 (L"error getting string from host.");

  return p;
}