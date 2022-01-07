
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct compress_tree_node {int labs; int offset; } ;
typedef int sldns_buffer ;


 int PTR_CREATE (int ) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_write (int *,scalar_t__*,scalar_t__) ;
 int sldns_buffer_write_u16 (int *,int ) ;
 int sldns_buffer_write_u8 (int *,scalar_t__) ;

__attribute__((used)) static int
write_compressed_dname(sldns_buffer* pkt, uint8_t* dname, int labs,
 struct compress_tree_node* p)
{

 int labcopy = labs - p->labs;
 uint8_t lablen;
 uint16_t ptr;

 if(labs == 1) {

  if(sldns_buffer_remaining(pkt) < 1)
   return 0;
  sldns_buffer_write_u8(pkt, 0);
  return 1;
 }


 while(labcopy--) {
  lablen = *dname++;
  if(sldns_buffer_remaining(pkt) < (size_t)lablen+1)
   return 0;
  sldns_buffer_write_u8(pkt, lablen);
  sldns_buffer_write(pkt, dname, lablen);
  dname += lablen;
 }

 if(sldns_buffer_remaining(pkt) < 2)
  return 0;
 ptr = PTR_CREATE(p->offset);
 sldns_buffer_write_u16(pkt, ptr);
 return 1;
}
