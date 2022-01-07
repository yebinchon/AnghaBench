
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int arc_buf_hdr_t ;
typedef scalar_t__ arc_buf_contents_t ;


 scalar_t__ ARC_BUFC_DATA ;
 scalar_t__ ARC_BUFC_METADATA ;
 int ASSERT (int) ;
 scalar_t__ arc_buf_type (int *) ;
 int arc_free_data_impl (int *,int ,void*) ;
 int zio_buf_free (void*,int ) ;
 int zio_data_buf_free (void*,int ) ;

__attribute__((used)) static void
arc_free_data_buf(arc_buf_hdr_t *hdr, void *buf, uint64_t size, void *tag)
{
 arc_buf_contents_t type = arc_buf_type(hdr);

 arc_free_data_impl(hdr, size, tag);
 if (type == ARC_BUFC_METADATA) {
  zio_buf_free(buf, size);
 } else {
  ASSERT(type == ARC_BUFC_DATA);
  zio_data_buf_free(buf, size);
 }
}
