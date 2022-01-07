
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sequence_command_t ;
typedef int istream_t ;
typedef int frame_context_t ;


 int BAD_ALLOC () ;
 int IO_read_bits (int *,int) ;
 int decompress_sequences (int * const,int *,int *,size_t) ;
 int * malloc (size_t) ;

__attribute__((used)) static size_t decode_sequences(frame_context_t *const ctx, istream_t *in,
                               sequence_command_t **const sequences) {







    size_t num_sequences;





    u8 header = IO_read_bits(in, 8);
    if (header == 0) {


        *sequences = ((void*)0);
        return 0;
    } else if (header < 128) {

        num_sequences = header;
    } else if (header < 255) {

        num_sequences = ((header - 128) << 8) + IO_read_bits(in, 8);
    } else {

        num_sequences = IO_read_bits(in, 16) + 0x7F00;
    }

    *sequences = malloc(num_sequences * sizeof(sequence_command_t));
    if (!*sequences) {
        BAD_ALLOC();
    }

    decompress_sequences(ctx, in, *sequences, num_sequences);
    return num_sequences;
}
