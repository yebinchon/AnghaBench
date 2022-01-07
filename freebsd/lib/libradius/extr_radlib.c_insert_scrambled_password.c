
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_server {unsigned char* secret; } ;
struct rad_handle {int pass_len; unsigned char* out; int pass_pos; unsigned char* pass; struct rad_server* servers; } ;
typedef int MD5_CTX ;


 int LEN_AUTH ;
 int MD5Final (unsigned char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,unsigned char*,int) ;
 int MD5_DIGEST_LENGTH ;
 size_t POS_AUTH ;
 int memcpy (unsigned char*,unsigned char*,int ) ;
 int strlen (unsigned char*) ;

__attribute__((used)) static void
insert_scrambled_password(struct rad_handle *h, int srv)
{
 MD5_CTX ctx;
 unsigned char md5[MD5_DIGEST_LENGTH];
 const struct rad_server *srvp;
 int padded_len;
 int pos;

 srvp = &h->servers[srv];
 padded_len = h->pass_len == 0 ? 16 : (h->pass_len+15) & ~0xf;

 memcpy(md5, &h->out[POS_AUTH], LEN_AUTH);
 for (pos = 0; pos < padded_len; pos += 16) {
  int i;


  MD5Init(&ctx);
  MD5Update(&ctx, srvp->secret, strlen(srvp->secret));
  MD5Update(&ctx, md5, 16);
  MD5Final(md5, &ctx);







  for (i = 0; i < 16; i++)
   h->out[h->pass_pos + pos + i] =
       md5[i] ^= h->pass[pos + i];
 }
}
