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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  ostream_t ;
typedef  int /*<<< orphan*/  istream_t ;
typedef  scalar_t__ i64 ;
typedef  int /*<<< orphan*/  FSE_dtable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const* const,int /*<<< orphan*/ *,int /*<<< orphan*/  const* const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const* const,int /*<<< orphan*/ *,int /*<<< orphan*/  const* const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ * const,size_t const) ; 
 size_t FUNC5 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static size_t FUNC8(const FSE_dtable *const dtable,
                                          ostream_t *const out,
                                          istream_t *const in) {
    const size_t len = FUNC5(in);
    if (len == 0) {
        FUNC3();
    }
    const u8 *const src = FUNC4(in, len);

    // "Each bitstream must be read backward, that is starting from the end down
    // to the beginning. Therefore it's necessary to know the size of each
    // bitstream.
    //
    // It's also necessary to know exactly which bit is the latest. This is
    // detected by a final bit flag : the highest bit of latest byte is a
    // final-bit-flag. Consequently, a last byte of 0 is not possible. And the
    // final-bit-flag itself is not part of the useful bitstream. Hence, the
    // last byte contains between 0 and 7 useful bits."
    const int padding = 8 - FUNC7(src[len - 1]);
    i64 offset = len * 8 - padding;

    u16 state1, state2;
    // "The first state (State1) encodes the even indexed symbols, and the
    // second (State2) encodes the odd indexes. State1 is initialized first, and
    // then State2, and they take turns decoding a single symbol and updating
    // their state."
    FUNC1(dtable, &state1, src, &offset);
    FUNC1(dtable, &state2, src, &offset);

    // Decode until we overflow the stream
    // Since we decode in reverse order, overflowing the stream is offset going
    // negative
    size_t symbols_written = 0;
    while (1) {
        // "The number of symbols to decode is determined by tracking bitStream
        // overflow condition: If updating state after decoding a symbol would
        // require more bits than remain in the stream, it is assumed the extra
        // bits are 0. Then, the symbols for each of the final states are
        // decoded and the process is complete."
        FUNC6(out, FUNC0(dtable, &state1, src, &offset));
        symbols_written++;
        if (offset < 0) {
            // There's still a symbol to decode in state2
            FUNC6(out, FUNC2(dtable, state2));
            symbols_written++;
            break;
        }

        FUNC6(out, FUNC0(dtable, &state2, src, &offset));
        symbols_written++;
        if (offset < 0) {
            // There's still a symbol to decode in state1
            FUNC6(out, FUNC2(dtable, state1));
            symbols_written++;
            break;
        }
    }

    return symbols_written;
}