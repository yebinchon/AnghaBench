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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ZSTD_frameHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  ZSTD_f_zstd1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,size_t) ; 

int FUNC10(const uint8_t *src, size_t size)
{
    ZSTD_frameHeader zfh;
    /* You can fuzz any helper functions here that are fast, and take zstd
     * compressed data as input. E.g. don't expect the input to be a dictionary,
     * so don't fuzz ZSTD_getDictID_fromDict().
     */
    FUNC6(src, size);
    FUNC4(src, size);
    FUNC2(src, size);
    FUNC5(src, size);
    FUNC1(src, size);
    FUNC0(src, size);
    FUNC3(src, size);
    FUNC9(src, size);
    FUNC7(&zfh, src, size);
    FUNC8(&zfh, src, size, ZSTD_f_zstd1);
    return 0;
}