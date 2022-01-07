
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int spa_t ;
typedef enum zio_compress { ____Placeholder_zio_compress } zio_compress ;
typedef int arc_buf_t ;


 int * arc_alloc_compressed_buf (int *,int ,int ,int ,int) ;
 int arc_buf_size (int *) ;
 int arc_loaned_bytes_update (int ) ;
 int arc_onloan_tag ;

arc_buf_t *
arc_loan_compressed_buf(spa_t *spa, uint64_t psize, uint64_t lsize,
    enum zio_compress compression_type)
{
 arc_buf_t *buf = arc_alloc_compressed_buf(spa, arc_onloan_tag,
     psize, lsize, compression_type);

 arc_loaned_bytes_update(arc_buf_size(buf));

 return (buf);
}
