
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_char ;
struct mgmt_header_t {int * da; int * sa; } ;



__attribute__((used)) static void
get_mgmt_src_dst_mac(const u_char *p, const uint8_t **srcp, const uint8_t **dstp)
{
 const struct mgmt_header_t *hp = (const struct mgmt_header_t *) p;

 if (srcp != ((void*)0))
  *srcp = hp->sa;
 if (dstp != ((void*)0))
  *dstp = hp->da;
}
