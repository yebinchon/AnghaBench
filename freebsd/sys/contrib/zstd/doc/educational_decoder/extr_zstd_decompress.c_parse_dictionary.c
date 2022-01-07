
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int istream_t ;
struct TYPE_5__ {size_t* previous_offsets; int ll_dtable; int ml_dtable; int of_dtable; int literals_dtable; void* dictionary_id; } ;
typedef TYPE_1__ dictionary_t ;


 int DICT_SIZE_ERROR () ;
 int ERROR (char*) ;
 int IO_make_istream (int const*,size_t) ;
 void* IO_read_bits (int *,int) ;
 int IO_rewind_bits (int *,int) ;
 int NULL_SRC () ;
 int decode_huf_table (int *,int *) ;
 int decode_seq_table (int *,int *,int ,int ) ;
 int init_dictionary_content (TYPE_1__* const,int *) ;
 int memset (TYPE_1__* const,int ,int) ;
 int seq_fse ;
 int seq_literal_length ;
 int seq_match_length ;
 int seq_offset ;

void parse_dictionary(dictionary_t *const dict, const void *src,
                             size_t src_len) {
    const u8 *byte_src = (const u8 *)src;
    memset(dict, 0, sizeof(dictionary_t));
    if (src == ((void*)0)) {
        NULL_SRC();
    }
    if (src_len < 8) {
        DICT_SIZE_ERROR();
    }

    istream_t in = IO_make_istream(byte_src, src_len);

    const u32 magic_number = IO_read_bits(&in, 32);
    if (magic_number != 0xEC30A437) {

        IO_rewind_bits(&in, 32);
        init_dictionary_content(dict, &in);
        return;
    }

    dict->dictionary_id = IO_read_bits(&in, 32);
    decode_huf_table(&dict->literals_dtable, &in);
    decode_seq_table(&dict->of_dtable, &in, seq_offset, seq_fse);
    decode_seq_table(&dict->ml_dtable, &in, seq_match_length, seq_fse);
    decode_seq_table(&dict->ll_dtable, &in, seq_literal_length, seq_fse);


    dict->previous_offsets[0] = IO_read_bits(&in, 32);
    dict->previous_offsets[1] = IO_read_bits(&in, 32);
    dict->previous_offsets[2] = IO_read_bits(&in, 32);



    for (int i = 0; i < 3; i++) {
        if (dict->previous_offsets[i] > src_len) {
            ERROR("Dictionary corrupted");
        }
    }




    init_dictionary_content(dict, &in);
}
