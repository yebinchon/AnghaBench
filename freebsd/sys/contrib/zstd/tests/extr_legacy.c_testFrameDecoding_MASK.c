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

/* Variables and functions */
 char* COMPRESSED ; 
 size_t COMPRESSED_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  EXPECTED ; 
 scalar_t__ FUNC1 (char*,size_t) ; 
 size_t FUNC2 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
    if (FUNC5(EXPECTED) > FUNC1(COMPRESSED, COMPRESSED_SIZE)) {
        FUNC0("ERROR: ZSTD_decompressBound: decompressed bound too small\n");
        return 1;
    }
    {   const char* ip = COMPRESSED;
        size_t remainingSize = COMPRESSED_SIZE;
        while (1) {
            size_t frameSize = FUNC2(ip, remainingSize);
            if (FUNC4(frameSize)) {
                FUNC0("ERROR: ZSTD_findFrameCompressedSize: %s\n", FUNC3(frameSize));
                return 1;
            }
            if (frameSize > remainingSize) {
                FUNC0("ERROR: ZSTD_findFrameCompressedSize: expected frameSize to align with src buffer");
                return 1;
            }
            ip += frameSize;
            remainingSize -= frameSize;
            if (remainingSize == 0) break;
        }
    }
    FUNC0("Frame Decoding OK\n");
    return 0;
}