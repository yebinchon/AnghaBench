
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int istream_t ;
struct TYPE_3__ {scalar_t__ frame_content_size; int single_segment_flag; } ;
typedef TYPE_1__ frame_header_t ;


 int ERROR (char*) ;
 int IO_make_istream (void const*,size_t const) ;
 int IO_read_bits (int *,int) ;
 int parse_frame_header (TYPE_1__*,int *) ;

size_t ZSTD_get_decompressed_size(const void *src, const size_t src_len) {
    istream_t in = IO_make_istream(src, src_len);


    {
        const u32 magic_number = (u32)IO_read_bits(&in, 32);

        if (magic_number == 0xFD2FB528U) {

            frame_header_t header;
            parse_frame_header(&header, &in);

            if (header.frame_content_size == 0 && !header.single_segment_flag) {

                return (size_t)-1;
            }

            return header.frame_content_size;
        } else {

            ERROR("ZSTD frame magic number did not match");
        }
    }
}
