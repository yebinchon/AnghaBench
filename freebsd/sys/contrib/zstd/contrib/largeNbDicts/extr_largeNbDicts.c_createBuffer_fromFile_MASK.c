#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ size; scalar_t__ capacity; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ buffer_t ;
typedef  scalar_t__ U64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ const UTIL_FILESIZE_UNKNOWN ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 TYPE_1__ kBuffNull ; 

__attribute__((used)) static buffer_t FUNC7(const char* fileName)
{
    U64 const fileSize = FUNC1(fileName);
    size_t const bufferSize = (size_t) fileSize;

    if (fileSize == UTIL_FILESIZE_UNKNOWN) return kBuffNull;
    FUNC2((U64)bufferSize == fileSize);   /* check overflow */

    {   FILE* const f = FUNC6(fileName, "rb");
        if (f == NULL) return kBuffNull;

        buffer_t buff = FUNC3(bufferSize);
        FUNC0(buff.ptr != NULL);

        FUNC5(&buff, f);
        FUNC0(buff.size == buff.capacity);

        FUNC4(f);   /* do nothing specific if fclose() fails */
        return buff;
    }
}