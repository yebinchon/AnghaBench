#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ data; } ;
typedef  TYPE_1__ frame_t ;
typedef  int /*<<< orphan*/  dictInfo ;
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC3(U32* seed, frame_t* frame, size_t contentSize, dictInfo info)
{
    BYTE* const blockStart = (BYTE*)frame->data;
    size_t literalsSize;
    size_t nbSeq;

    FUNC0(4, "  compressed block:\n");

    literalsSize = FUNC1(seed, frame, contentSize);

    FUNC0(4, "   literals size: %u\n", (unsigned)literalsSize);

    nbSeq = FUNC2(seed, frame, contentSize, literalsSize, info);

    FUNC0(4, "   number of sequences: %u\n", (unsigned)nbSeq);

    return (BYTE*)frame->data - blockStart;
}