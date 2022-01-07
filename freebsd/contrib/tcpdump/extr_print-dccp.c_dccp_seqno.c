
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_char ;
struct dccp_hdr_ext {int dccph_seq; } ;
struct dccp_hdr {int dccph_seq; } ;


 scalar_t__ DCCPH_X (struct dccp_hdr const*) ;
 int EXTRACT_24BITS (int ) ;
 int EXTRACT_48BITS (int ) ;

__attribute__((used)) static uint64_t dccp_seqno(const u_char *bp)
{
 const struct dccp_hdr *dh = (const struct dccp_hdr *)bp;
 uint64_t seqno;

 if (DCCPH_X(dh) != 0) {
  const struct dccp_hdr_ext *dhx = (const struct dccp_hdr_ext *)bp;
  seqno = EXTRACT_48BITS(dhx->dccph_seq);
 } else {
  seqno = EXTRACT_24BITS(dh->dccph_seq);
 }

 return seqno;
}
