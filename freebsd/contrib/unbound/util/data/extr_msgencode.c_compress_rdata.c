
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct regional {int dummy; } ;
struct compress_tree_node {int dummy; } ;
struct TYPE_3__ {int* _wireformat; scalar_t__ _dname_count; } ;
typedef TYPE_1__ sldns_rr_descriptor ;
typedef int sldns_buffer ;




 int RETVAL_OK ;
 int RETVAL_TRUNC ;
 int compress_any_dname (scalar_t__*,int *,int,struct regional*,struct compress_tree_node**) ;
 int dname_count_size_labels (scalar_t__*,size_t*) ;
 size_t get_rdf_size (int) ;
 size_t sldns_buffer_position (int *) ;
 size_t sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int) ;
 int sldns_buffer_write (int *,scalar_t__*,size_t) ;
 int sldns_buffer_write_u16_at (int *,size_t,size_t) ;

__attribute__((used)) static int
compress_rdata(sldns_buffer* pkt, uint8_t* rdata, size_t todolen,
 struct regional* region, struct compress_tree_node** tree,
 const sldns_rr_descriptor* desc)
{
 int labs, r, rdf = 0;
 size_t dname_len, len, pos = sldns_buffer_position(pkt);
 uint8_t count = desc->_dname_count;

 sldns_buffer_skip(pkt, 2);

 rdata += 2;
 todolen -= 2;
 while(todolen > 0 && count) {
  switch(desc->_wireformat[rdf]) {
  case 129:
   labs = dname_count_size_labels(rdata, &dname_len);
   if((r=compress_any_dname(rdata, pkt, labs, region,
    tree)) != RETVAL_OK)
    return r;
   rdata += dname_len;
   todolen -= dname_len;
   count--;
   len = 0;
   break;
  case 128:
   len = *rdata + 1;
   break;
  default:
   len = get_rdf_size(desc->_wireformat[rdf]);
  }
  if(len) {

   if(sldns_buffer_remaining(pkt) < len)
    return RETVAL_TRUNC;
   sldns_buffer_write(pkt, rdata, len);
   todolen -= len;
   rdata += len;
  }
  rdf++;
 }

 if(todolen > 0) {
  if(sldns_buffer_remaining(pkt) < todolen)
   return RETVAL_TRUNC;
  sldns_buffer_write(pkt, rdata, todolen);
 }


 sldns_buffer_write_u16_at(pkt, pos, sldns_buffer_position(pkt)-pos-2);
 return RETVAL_OK;
}
