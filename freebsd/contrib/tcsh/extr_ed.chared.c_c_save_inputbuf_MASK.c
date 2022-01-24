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
struct TYPE_4__ {scalar_t__ len; } ;

/* Variables and functions */
 void* CursSaved ; 
 void* Cursor ; 
 int /*<<< orphan*/  HistSaved ; 
 int /*<<< orphan*/  Hist_num ; 
 void* InputBuf ; 
 void* LastChar ; 
 void* LastSaved ; 
 int RestoreSaved ; 
 TYPE_1__ SavedBuf ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(void)
{
    SavedBuf.len = 0;
    FUNC0(&SavedBuf, InputBuf);
    FUNC1(&SavedBuf);
    LastSaved = LastChar - InputBuf;
    CursSaved = Cursor - InputBuf;
    HistSaved = Hist_num;
    RestoreSaved = 1;
}