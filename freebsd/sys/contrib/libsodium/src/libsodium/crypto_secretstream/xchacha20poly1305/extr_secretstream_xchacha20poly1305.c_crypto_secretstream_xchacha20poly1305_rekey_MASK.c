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
struct TYPE_5__ {unsigned char* k; int /*<<< orphan*/  nonce; } ;
typedef  TYPE_1__ crypto_secretstream_xchacha20poly1305_state ;

/* Variables and functions */
 unsigned char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int crypto_secretstream_xchacha20poly1305_INONCEBYTES ; 
 int crypto_stream_chacha20_ietf_KEYBYTES ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ,unsigned char*) ; 

void
FUNC3
    (crypto_secretstream_xchacha20poly1305_state *state)
{
    unsigned char new_key_and_inonce[crypto_stream_chacha20_ietf_KEYBYTES +
                                     crypto_secretstream_xchacha20poly1305_INONCEBYTES];
    size_t        i;

    for (i = 0U; i < crypto_stream_chacha20_ietf_KEYBYTES; i++) {
        new_key_and_inonce[i] = state->k[i];
    }
    for (i = 0U; i < crypto_secretstream_xchacha20poly1305_INONCEBYTES; i++) {
        new_key_and_inonce[crypto_stream_chacha20_ietf_KEYBYTES + i] =
            FUNC0(state)[i];
    }
    FUNC2(new_key_and_inonce, new_key_and_inonce,
                                    sizeof new_key_and_inonce,
                                    state->nonce, state->k);
    for (i = 0U; i < crypto_stream_chacha20_ietf_KEYBYTES; i++) {
        state->k[i] = new_key_and_inonce[i];
    }
    for (i = 0U; i < crypto_secretstream_xchacha20poly1305_INONCEBYTES; i++) {
        FUNC0(state)[i] =
            new_key_and_inonce[crypto_stream_chacha20_ietf_KEYBYTES + i];
    }
    FUNC1(state);
}