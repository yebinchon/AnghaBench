
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_hdr {int gh_error; void* gh_seq; int gh_length; void* gh_offset; } ;


 int htobe16 (int ) ;
 int htobe32 (int ) ;
 void* htobe64 (void*) ;

__attribute__((used)) static __inline void
g_gate_swap2n_hdr(struct g_gate_hdr *hdr)
{


 hdr->gh_offset = htobe64(hdr->gh_offset);
 hdr->gh_length = htobe32(hdr->gh_length);
 hdr->gh_seq = htobe64(hdr->gh_seq);
 hdr->gh_error = htobe16(hdr->gh_error);
}
