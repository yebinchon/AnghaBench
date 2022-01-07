
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef size_t seq_part_t ;
typedef int seq_mode_t ;
typedef int istream_t ;
typedef int i16 ;
struct TYPE_7__ {int symbols; } ;
typedef TYPE_1__ FSE_dtable ;


 int CORRUPTION () ;
 int FSE_decode_header (TYPE_1__* const,int * const,size_t const) ;
 int FSE_free_dtable (TYPE_1__* const) ;
 int FSE_init_dtable (TYPE_1__* const,int const*,size_t const,size_t const) ;
 int FSE_init_dtable_rle (TYPE_1__* const,int const) ;
 int IMPOSSIBLE () ;
 int * IO_get_read_ptr (int * const,int) ;
 int const* const SEQ_LITERAL_LENGTH_DEFAULT_DIST ;
 int const* const SEQ_MATCH_LENGTH_DEFAULT_DIST ;
 int const* const SEQ_OFFSET_DEFAULT_DIST ;





__attribute__((used)) static void decode_seq_table(FSE_dtable *const table, istream_t *const in,
                             const seq_part_t type, const seq_mode_t mode) {

    const i16 *const default_distributions[] = {SEQ_LITERAL_LENGTH_DEFAULT_DIST,
                                                SEQ_OFFSET_DEFAULT_DIST,
                                                SEQ_MATCH_LENGTH_DEFAULT_DIST};
    const size_t default_distribution_lengths[] = {36, 29, 53};
    const size_t default_distribution_accuracies[] = {6, 5, 6};

    const size_t max_accuracies[] = {9, 8, 9};

    if (mode != 129) {

        FSE_free_dtable(table);
    }

    switch (mode) {
    case 130: {

        const i16 *distribution = default_distributions[type];
        const size_t symbs = default_distribution_lengths[type];
        const size_t accuracy_log = default_distribution_accuracies[type];

        FSE_init_dtable(table, distribution, symbs, accuracy_log);
        break;
    }
    case 128: {

        const u8 symb = IO_get_read_ptr(in, 1)[0];
        FSE_init_dtable_rle(table, symb);
        break;
    }
    case 131: {


        FSE_decode_header(table, in, max_accuracies[type]);
        break;
    }
    case 129:



        if (!table->symbols) {

            CORRUPTION();
        }
        break;
    default:

        IMPOSSIBLE();
        break;
    }

}
