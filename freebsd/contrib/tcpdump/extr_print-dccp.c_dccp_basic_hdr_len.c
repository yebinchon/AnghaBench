
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dccp_hdr_ext {int dummy; } ;
struct dccp_hdr {int dummy; } ;


 scalar_t__ DCCPH_X (struct dccp_hdr const*) ;

__attribute__((used)) static inline unsigned int dccp_basic_hdr_len(const struct dccp_hdr *dh)
{
 return DCCPH_X(dh) ? sizeof(struct dccp_hdr_ext) : sizeof(struct dccp_hdr);
}
