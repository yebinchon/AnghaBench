
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {scalar_t__ server; scalar_t__ client; } ;


 int bin_clear_free (int *,int) ;
 int * os_malloc (int) ;
 int os_memcpy (int *,int *,size_t) ;
 int tls_get_keyblock_size (struct tls_connection*) ;
 int tlsv1_client_prf (scalar_t__,char const*,int const*,size_t,int,int *,int) ;
 int tlsv1_server_prf (scalar_t__,char const*,int const*,size_t,int,int *,int) ;

__attribute__((used)) static int tls_connection_prf(void *tls_ctx, struct tls_connection *conn,
         const char *label, const u8 *context,
         size_t context_len, int server_random_first,
         int skip_keyblock, u8 *out, size_t out_len)
{
 int ret = -1, skip = 0;
 u8 *tmp_out = ((void*)0);
 u8 *_out = out;

 if (skip_keyblock) {
  skip = tls_get_keyblock_size(conn);
  if (skip < 0)
   return -1;
  tmp_out = os_malloc(skip + out_len);
  if (!tmp_out)
   return -1;
  _out = tmp_out;
 }
 if (ret == 0 && skip_keyblock)
  os_memcpy(out, _out + skip, out_len);
 bin_clear_free(tmp_out, skip);

 return ret;
}
