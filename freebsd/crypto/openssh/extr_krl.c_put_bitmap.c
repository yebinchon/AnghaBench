
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;
struct bitmap {int dummy; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 size_t bitmap_nbytes (struct bitmap*) ;
 scalar_t__ bitmap_to_string (struct bitmap*,int *,size_t) ;
 int free (int *) ;
 int * malloc (size_t) ;
 int sshbuf_put_bignum2_bytes (struct sshbuf*,int *,size_t) ;

__attribute__((used)) static int
put_bitmap(struct sshbuf *buf, struct bitmap *bitmap)
{
 size_t len;
 u_char *blob;
 int r;

 len = bitmap_nbytes(bitmap);
 if ((blob = malloc(len)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if (bitmap_to_string(bitmap, blob, len) != 0) {
  free(blob);
  return SSH_ERR_INTERNAL_ERROR;
 }
 r = sshbuf_put_bignum2_bytes(buf, blob, len);
 free(blob);
 return r;
}
