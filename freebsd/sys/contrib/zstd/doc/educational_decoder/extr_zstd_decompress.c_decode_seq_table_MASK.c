#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t seq_part_t ;
typedef  int seq_mode_t ;
typedef  int /*<<< orphan*/  istream_t ;
typedef  int /*<<< orphan*/  i16 ;
struct TYPE_7__ {int /*<<< orphan*/  symbols; } ;
typedef  TYPE_1__ FSE_dtable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int /*<<< orphan*/ * const,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int /*<<< orphan*/  const*,size_t const,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  const* const SEQ_LITERAL_LENGTH_DEFAULT_DIST ; 
 int /*<<< orphan*/  const* const SEQ_MATCH_LENGTH_DEFAULT_DIST ; 
 int /*<<< orphan*/  const* const SEQ_OFFSET_DEFAULT_DIST ; 
#define  seq_fse 131 
#define  seq_predefined 130 
#define  seq_repeat 129 
#define  seq_rle 128 

__attribute__((used)) static void FUNC7(FSE_dtable *const table, istream_t *const in,
                             const seq_part_t type, const seq_mode_t mode) {
    // Constant arrays indexed by seq_part_t
    const i16 *const default_distributions[] = {SEQ_LITERAL_LENGTH_DEFAULT_DIST,
                                                SEQ_OFFSET_DEFAULT_DIST,
                                                SEQ_MATCH_LENGTH_DEFAULT_DIST};
    const size_t default_distribution_lengths[] = {36, 29, 53};
    const size_t default_distribution_accuracies[] = {6, 5, 6};

    const size_t max_accuracies[] = {9, 8, 9};

    if (mode != seq_repeat) {
        // Free old one before overwriting
        FUNC2(table);
    }

    switch (mode) {
    case seq_predefined: {
        // "Predefined_Mode : uses a predefined distribution table."
        const i16 *distribution = default_distributions[type];
        const size_t symbs = default_distribution_lengths[type];
        const size_t accuracy_log = default_distribution_accuracies[type];

        FUNC3(table, distribution, symbs, accuracy_log);
        break;
    }
    case seq_rle: {
        // "RLE_Mode : it's a single code, repeated Number_of_Sequences times."
        const u8 symb = FUNC6(in, 1)[0];
        FUNC4(table, symb);
        break;
    }
    case seq_fse: {
        // "FSE_Compressed_Mode : standard FSE compression. A distribution table
        // will be present "
        FUNC1(table, in, max_accuracies[type]);
        break;
    }
    case seq_repeat:
        // "Repeat_Mode : re-use distribution table from previous compressed
        // block."
        // Nothing to do here, table will be unchanged
        if (!table->symbols) {
            // This mode is invalid if we don't already have a table
            FUNC0();
        }
        break;
    default:
        // Impossible, as mode is from 0-3
        FUNC5();
        break;
    }

}