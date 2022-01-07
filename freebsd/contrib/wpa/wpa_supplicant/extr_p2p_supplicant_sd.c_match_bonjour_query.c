
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct p2p_srv_bonjour {int query; } ;
typedef int str_srv ;
typedef int str_rx ;


 scalar_t__ os_memcmp (int const*,int const*,size_t) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ p2p_sd_dns_uncompress (char*,int,int const*,int,int ) ;
 int const* wpabuf_head (int ) ;
 int const* wpabuf_head_u8 (int ) ;
 int wpabuf_len (int ) ;

__attribute__((used)) static int match_bonjour_query(struct p2p_srv_bonjour *bsrv, const u8 *query,
          size_t query_len)
{
 char str_rx[256], str_srv[256];

 if (query_len < 3 || wpabuf_len(bsrv->query) < 3)
  return 0;
 if (os_memcmp(query + query_len - 3,
        wpabuf_head_u8(bsrv->query) + wpabuf_len(bsrv->query) - 3,
        3) != 0)
  return 0;
 if (query_len == wpabuf_len(bsrv->query) &&
     os_memcmp(query, wpabuf_head(bsrv->query), query_len - 3) == 0)
  return 1;

 if (p2p_sd_dns_uncompress(str_rx, sizeof(str_rx), query, query_len - 3,
      0))
  return 0;
 if (p2p_sd_dns_uncompress(str_srv, sizeof(str_srv),
      wpabuf_head(bsrv->query),
      wpabuf_len(bsrv->query) - 3, 0))
  return 0;

 return os_strcmp(str_rx, str_srv) == 0;
}
