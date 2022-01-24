#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int st_mode; } ;
typedef  TYPE_1__ stat_t ;
typedef  int U32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int _S_IFDIR ; 
 int FUNC1 (char const*,TYPE_1__*) ; 
 int FUNC2 (char const*,TYPE_1__*) ; 

U32 FUNC3(const char* infilename)
{
    int r;
    stat_t statbuf;
#if defined(_MSC_VER)
    r = _stat64(infilename, &statbuf);
    if (!r && (statbuf.st_mode & _S_IFDIR)) return 1;
#else
    r = FUNC2(infilename, &statbuf);
    if (!r && FUNC0(statbuf.st_mode)) return 1;
#endif
    return 0;
}