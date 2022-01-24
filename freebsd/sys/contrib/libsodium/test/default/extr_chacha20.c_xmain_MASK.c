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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int crypto_stream_chacha20_KEYBYTES ; 
 scalar_t__ crypto_stream_chacha20_MESSAGEBYTES_MAX ; 
 unsigned int crypto_stream_chacha20_NONCEBYTES ; 
 unsigned int crypto_stream_chacha20_ietf_KEYBYTES ; 
 scalar_t__ crypto_stream_chacha20_ietf_MESSAGEBYTES_MAX ; 
 unsigned int crypto_stream_chacha20_ietf_NONCEBYTES ; 
 unsigned int FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 unsigned int FUNC3 () ; 
 unsigned int FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(void)
{
    FUNC7();
    FUNC8();

    FUNC0(FUNC4() > 0U);
    FUNC0(FUNC4() == crypto_stream_chacha20_KEYBYTES);
    FUNC0(FUNC6() > 0U);
    FUNC0(FUNC6() == crypto_stream_chacha20_NONCEBYTES);
    FUNC0(FUNC5() == crypto_stream_chacha20_MESSAGEBYTES_MAX);
    FUNC0(FUNC1() > 0U);
    FUNC0(FUNC1() == crypto_stream_chacha20_ietf_KEYBYTES);
    FUNC0(FUNC3() > 0U);
    FUNC0(FUNC3() == crypto_stream_chacha20_ietf_NONCEBYTES);
    FUNC0(FUNC2() == crypto_stream_chacha20_ietf_MESSAGEBYTES_MAX);

    return 0;
}