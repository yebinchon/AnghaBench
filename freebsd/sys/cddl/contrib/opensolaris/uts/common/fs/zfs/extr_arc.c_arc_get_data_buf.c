
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
 int B_TRUE ;
 scalar_t__ arc_buf_type (int *) ;
 int arc_get_data_impl (int *,int ,void*,int ) ;
 void* zio_buf_alloc (int ) ;
 void* zio_data_buf_alloc (int ) ;

__attribute__((used)) static void *
arc_get_data_buf(arc_buf_hdr_t *hdr, uint64_t size, void *tag)
{
 arc_buf_contents_t type = arc_buf_type(hdr);

 arc_get_data_impl(hdr, size, tag, B_TRUE);
 if (type == ARC_BUFC_METADATA) {
  return (zio_buf_alloc(size));
 } else {
  ASSERT(type == ARC_BUFC_DATA);
  return (zio_data_buf_alloc(size));
 }
}
