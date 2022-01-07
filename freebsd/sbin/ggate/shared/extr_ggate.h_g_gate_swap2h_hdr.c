
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_gate_hdr {int gh_error; void* gh_seq; int gh_length; void* gh_offset; } ;


 int be16toh (int ) ;
 int be32toh (int ) ;
 void* be64toh (void*) ;

__attribute__((used)) static __inline void
g_gate_swap2h_hdr(struct g_gate_hdr *hdr)
{


 hdr->gh_offset = be64toh(hdr->gh_offset);
 hdr->gh_length = be32toh(hdr->gh_length);
 hdr->gh_seq = be64toh(hdr->gh_seq);
 hdr->gh_error = be16toh(hdr->gh_error);
}
