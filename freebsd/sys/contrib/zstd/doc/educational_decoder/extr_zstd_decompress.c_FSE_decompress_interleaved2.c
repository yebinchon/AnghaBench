
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int ostream_t ;
typedef int istream_t ;
typedef scalar_t__ i64 ;
typedef int FSE_dtable ;


 int FSE_decode_symbol (int const* const,int *,int const* const,scalar_t__*) ;
 int FSE_init_state (int const* const,int *,int const* const,scalar_t__*) ;
 int FSE_peek_symbol (int const* const,int ) ;
 int INP_SIZE () ;
 int * IO_get_read_ptr (int * const,size_t const) ;
 size_t IO_istream_len (int * const) ;
 int IO_write_byte (int * const,int ) ;
 int highest_set_bit (int const) ;

__attribute__((used)) static size_t FSE_decompress_interleaved2(const FSE_dtable *const dtable,
                                          ostream_t *const out,
                                          istream_t *const in) {
    const size_t len = IO_istream_len(in);
    if (len == 0) {
        INP_SIZE();
    }
    const u8 *const src = IO_get_read_ptr(in, len);
    const int padding = 8 - highest_set_bit(src[len - 1]);
    i64 offset = len * 8 - padding;

    u16 state1, state2;




    FSE_init_state(dtable, &state1, src, &offset);
    FSE_init_state(dtable, &state2, src, &offset);




    size_t symbols_written = 0;
    while (1) {





        IO_write_byte(out, FSE_decode_symbol(dtable, &state1, src, &offset));
        symbols_written++;
        if (offset < 0) {

            IO_write_byte(out, FSE_peek_symbol(dtable, state2));
            symbols_written++;
            break;
        }

        IO_write_byte(out, FSE_decode_symbol(dtable, &state2, src, &offset));
        symbols_written++;
        if (offset < 0) {

            IO_write_byte(out, FSE_peek_symbol(dtable, state1));
            symbols_written++;
            break;
        }
    }

    return symbols_written;
}
