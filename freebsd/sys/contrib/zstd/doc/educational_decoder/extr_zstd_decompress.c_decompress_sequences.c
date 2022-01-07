
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int ml_state; int ml_table; int of_state; int of_table; int ll_state; int ll_table; } ;
typedef TYPE_1__ sequence_states_t ;
typedef int sequence_command_t ;
typedef int istream_t ;
typedef scalar_t__ i64 ;
struct TYPE_6__ {int ml_dtable; int of_dtable; int ll_dtable; } ;
typedef TYPE_2__ frame_context_t ;


 int CORRUPTION () ;
 int FSE_init_state (int *,int *,int const* const,scalar_t__*) ;
 int* IO_get_read_ptr (int *,size_t const) ;
 size_t IO_istream_len (int *) ;
 int IO_read_bits (int *,int) ;
 int decode_seq_table (int *,int *,int ,int) ;
 int decode_sequence (TYPE_1__*,int const* const,scalar_t__*) ;
 int highest_set_bit (int const) ;
 int seq_literal_length ;
 int seq_match_length ;
 int seq_offset ;

__attribute__((used)) static void decompress_sequences(frame_context_t *const ctx, istream_t *in,
                                 sequence_command_t *const sequences,
                                 const size_t num_sequences) {
    u8 compression_modes = IO_read_bits(in, 8);

    if ((compression_modes & 3) != 0) {

        CORRUPTION();
    }
    decode_seq_table(&ctx->ll_dtable, in, seq_literal_length,
                     (compression_modes >> 6) & 3);

    decode_seq_table(&ctx->of_dtable, in, seq_offset,
                     (compression_modes >> 4) & 3);

    decode_seq_table(&ctx->ml_dtable, in, seq_match_length,
                     (compression_modes >> 2) & 3);


    sequence_states_t states;


    {
        states.ll_table = ctx->ll_dtable;
        states.of_table = ctx->of_dtable;
        states.ml_table = ctx->ml_dtable;
    }

    const size_t len = IO_istream_len(in);
    const u8 *const src = IO_get_read_ptr(in, len);



    const int padding = 8 - highest_set_bit(src[len - 1]);

    i64 bit_offset = (i64)(len * 8 - (size_t)padding);







    FSE_init_state(&states.ll_table, &states.ll_state, src, &bit_offset);
    FSE_init_state(&states.of_table, &states.of_state, src, &bit_offset);
    FSE_init_state(&states.ml_table, &states.ml_state, src, &bit_offset);

    for (size_t i = 0; i < num_sequences; i++) {

        sequences[i] = decode_sequence(&states, src, &bit_offset);
    }

    if (bit_offset != 0) {
        CORRUPTION();
    }
}
