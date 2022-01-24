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
typedef  scalar_t__ HUF_nbStreams_e ;
typedef  int /*<<< orphan*/  HUF_CElt ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,int,void const*,size_t,int /*<<< orphan*/  const*,int const) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int,void const*,size_t,int /*<<< orphan*/  const*,int const) ; 
 scalar_t__ FUNC2 (size_t const) ; 
 scalar_t__ HUF_singleStream ; 

__attribute__((used)) static size_t FUNC3(
                BYTE* const ostart, BYTE* op, BYTE* const oend,
                const void* src, size_t srcSize,
                HUF_nbStreams_e nbStreams, const HUF_CElt* CTable, const int bmi2)
{
    size_t const cSize = (nbStreams==HUF_singleStream) ?
                         FUNC0(op, oend - op, src, srcSize, CTable, bmi2) :
                         FUNC1(op, oend - op, src, srcSize, CTable, bmi2);
    if (FUNC2(cSize)) { return cSize; }
    if (cSize==0) { return 0; }   /* uncompressible */
    op += cSize;
    /* check compressibility */
    if ((size_t)(op-ostart) >= srcSize-1) { return 0; }
    return op-ostart;
}