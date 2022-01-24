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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  istream_t ;
struct TYPE_5__ {size_t* previous_offsets; int /*<<< orphan*/  ll_dtable; int /*<<< orphan*/  ml_dtable; int /*<<< orphan*/  of_dtable; int /*<<< orphan*/  literals_dtable; void* dictionary_id; } ;
typedef  TYPE_1__ dictionary_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  seq_fse ; 
 int /*<<< orphan*/  seq_literal_length ; 
 int /*<<< orphan*/  seq_match_length ; 
 int /*<<< orphan*/  seq_offset ; 

void FUNC10(dictionary_t *const dict, const void *src,
                             size_t src_len) {
    const u8 *byte_src = (const u8 *)src;
    FUNC9(dict, 0, sizeof(dictionary_t));
    if (src == NULL) { /* cannot initialize dictionary with null src */
        FUNC5();
    }
    if (src_len < 8) {
        FUNC0();
    }

    istream_t in = FUNC2(byte_src, src_len);

    const u32 magic_number = FUNC3(&in, 32);
    if (magic_number != 0xEC30A437) {
        // raw content dict
        FUNC4(&in, 32);
        FUNC8(dict, &in);
        return;
    }

    dict->dictionary_id = FUNC3(&in, 32);

    // "Entropy_Tables : following the same format as the tables in compressed
    // blocks. They are stored in following order : Huffman tables for literals,
    // FSE table for offsets, FSE table for match lengths, and FSE table for
    // literals lengths. It's finally followed by 3 offset values, populating
    // recent offsets (instead of using {1,4,8}), stored in order, 4-bytes
    // little-endian each, for a total of 12 bytes. Each recent offset must have
    // a value < dictionary size."
    FUNC6(&dict->literals_dtable, &in);
    FUNC7(&dict->of_dtable, &in, seq_offset, seq_fse);
    FUNC7(&dict->ml_dtable, &in, seq_match_length, seq_fse);
    FUNC7(&dict->ll_dtable, &in, seq_literal_length, seq_fse);

    // Read in the previous offset history
    dict->previous_offsets[0] = FUNC3(&in, 32);
    dict->previous_offsets[1] = FUNC3(&in, 32);
    dict->previous_offsets[2] = FUNC3(&in, 32);

    // Ensure the provided offsets aren't too large
    // "Each recent offset must have a value < dictionary size."
    for (int i = 0; i < 3; i++) {
        if (dict->previous_offsets[i] > src_len) {
            FUNC1("Dictionary corrupted");
        }
    }

    // "Content : The rest of the dictionary is its content. The content act as
    // a "past" in front of data to compress or decompress, so it can be
    // referenced in sequence commands."
    FUNC8(dict, &in);
}