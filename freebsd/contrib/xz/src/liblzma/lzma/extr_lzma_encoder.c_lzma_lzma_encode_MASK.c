#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  lzma_ret ;
struct TYPE_15__ {scalar_t__ read_pos; scalar_t__ read_ahead; scalar_t__ read_limit; scalar_t__ action; } ;
typedef  TYPE_1__ lzma_mf ;
struct TYPE_16__ {int is_flushed; int /*<<< orphan*/  rc; scalar_t__ fast_mode; int /*<<< orphan*/  is_initialized; } ;
typedef  TYPE_2__ lzma_lzma1_encoder ;

/* Variables and functions */
 scalar_t__ LOOP_INPUT_MAX ; 
 scalar_t__ LZMA2_CHUNK_MAX ; 
 int /*<<< orphan*/  LZMA_OK ; 
 scalar_t__ LZMA_RUN ; 
 int /*<<< orphan*/  LZMA_STREAM_END ; 
 scalar_t__ UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,scalar_t__*,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

extern lzma_ret
FUNC10(lzma_lzma1_encoder *restrict coder, lzma_mf *restrict mf,
		uint8_t *restrict out, size_t *restrict out_pos,
		size_t out_size, uint32_t limit)
{
	// Initialize the stream if no data has been encoded yet.
	if (!coder->is_initialized && !FUNC2(coder, mf))
		return LZMA_OK;

	// Get the lowest bits of the uncompressed offset from the LZ layer.
	uint32_t position = FUNC6(mf);

	while (true) {
		// Encode pending bits, if any. Calling this before encoding
		// the next symbol is needed only with plain LZMA, since
		// LZMA2 always provides big enough buffer to flush
		// everything out from the range encoder. For the same reason,
		// rc_encode() never returns true when this function is used
		// as part of LZMA2 encoder.
		if (FUNC7(&coder->rc, out, out_pos, out_size)) {
			FUNC0(limit == UINT32_MAX);
			return LZMA_OK;
		}

		// With LZMA2 we need to take care that compressed size of
		// a chunk doesn't get too big.
		// FIXME? Check if this could be improved.
		if (limit != UINT32_MAX
				&& (mf->read_pos - mf->read_ahead >= limit
					|| *out_pos + FUNC9(&coder->rc)
						>= LZMA2_CHUNK_MAX
							- LOOP_INPUT_MAX))
			break;

		// Check that there is some input to process.
		if (mf->read_pos >= mf->read_limit) {
			if (mf->action == LZMA_RUN)
				return LZMA_OK;

			if (mf->read_ahead == 0)
				break;
		}

		// Get optimal match (repeat position and length).
		// Value ranges for pos:
		//   - [0, REPS): repeated match
		//   - [REPS, UINT32_MAX):
		//     match at (pos - REPS)
		//   - UINT32_MAX: not a match but a literal
		// Value ranges for len:
		//   - [MATCH_LEN_MIN, MATCH_LEN_MAX]
		uint32_t len;
		uint32_t back;

		if (coder->fast_mode)
			FUNC4(coder, mf, &back, &len);
		else
			FUNC5(
					coder, mf, &back, &len, position);

		FUNC3(coder, mf, back, len, position);

		position += len;
	}

	if (!coder->is_flushed) {
		coder->is_flushed = true;

		// We don't support encoding plain LZMA streams without EOPM,
		// and LZMA2 doesn't use EOPM at LZMA level.
		if (limit == UINT32_MAX)
			FUNC1(coder, position);

		// Flush the remaining bytes from the range encoder.
		FUNC8(&coder->rc);

		// Copy the remaining bytes to the output buffer. If there
		// isn't enough output space, we will copy out the remaining
		// bytes on the next call to this function by using
		// the rc_encode() call in the encoding loop above.
		if (FUNC7(&coder->rc, out, out_pos, out_size)) {
			FUNC0(limit == UINT32_MAX);
			return LZMA_OK;
		}
	}

	// Make it ready for the next LZMA2 chunk.
	coder->is_flushed = false;

	return LZMA_STREAM_END;
}