
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_7__ {size_t literal_length; size_t match_length; } ;
typedef TYPE_1__ sequence_command_t ;
typedef int ostream_t ;
typedef int istream_t ;
struct TYPE_8__ {size_t current_total_output; int * previous_offsets; } ;
typedef TYPE_2__ frame_context_t ;


 size_t IO_istream_len (int *) ;
 int IO_make_istream (int const* const,size_t const) ;
 size_t compute_offset (TYPE_1__ const,int * const) ;
 scalar_t__ copy_literals (size_t,int *,int * const) ;
 int execute_match_copy (TYPE_2__* const,size_t const,size_t const,size_t,int * const) ;

__attribute__((used)) static void execute_sequences(frame_context_t *const ctx, ostream_t *const out,
                              const u8 *const literals,
                              const size_t literals_len,
                              const sequence_command_t *const sequences,
                              const size_t num_sequences) {
    istream_t litstream = IO_make_istream(literals, literals_len);

    u64 *const offset_hist = ctx->previous_offsets;
    size_t total_output = ctx->current_total_output;

    for (size_t i = 0; i < num_sequences; i++) {
        const sequence_command_t seq = sequences[i];
        {
            const u32 literals_size = copy_literals(seq.literal_length, &litstream, out);
            total_output += literals_size;
        }

        size_t const offset = compute_offset(seq, offset_hist);

        size_t const match_length = seq.match_length;

        execute_match_copy(ctx, offset, match_length, total_output, out);

        total_output += match_length;
    }


    {
        size_t len = IO_istream_len(&litstream);
        copy_literals(len, &litstream, out);
        total_output += len;
    }

    ctx->current_total_output = total_output;
}
