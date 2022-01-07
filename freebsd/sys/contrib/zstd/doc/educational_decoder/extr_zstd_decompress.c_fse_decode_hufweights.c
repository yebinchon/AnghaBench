
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ostream_t ;
typedef int istream_t ;
typedef int FSE_dtable ;


 int FSE_decode_header (int *,int * const,int const) ;
 int FSE_decompress_interleaved2 (int *,int *,int * const) ;
 int FSE_free_dtable (int *) ;

__attribute__((used)) static void fse_decode_hufweights(ostream_t *weights, istream_t *const in,
                                    int *const num_symbs) {
    const int MAX_ACCURACY_LOG = 7;

    FSE_dtable dtable;




    FSE_decode_header(&dtable, in, MAX_ACCURACY_LOG);


    *num_symbs = FSE_decompress_interleaved2(&dtable, weights, in);

    FSE_free_dtable(&dtable);
}
