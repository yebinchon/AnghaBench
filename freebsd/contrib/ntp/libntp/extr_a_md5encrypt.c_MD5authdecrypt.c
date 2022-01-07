
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int const u_int32 ;
typedef int u_char ;
struct TYPE_6__ {int member_1; int * member_0; } ;
typedef TYPE_1__ rwbuffT ;
struct TYPE_7__ {size_t member_1; int const* member_0; } ;
typedef TYPE_2__ robuffT ;
typedef int digest ;


 int EVP_MAX_MD_SIZE ;
 size_t KEY_MAC_LEN ;
 int LOG_ERR ;
 size_t MAX_MDG_LEN ;
 int isc_tsmemcmp (int *,int *,size_t) ;
 size_t make_mac (TYPE_1__*,int,TYPE_2__*,TYPE_2__*) ;
 int msyslog (int ,char*) ;

int
MD5authdecrypt(
 int type,
 const u_char * key,
 size_t klen,
 u_int32 * pkt,
 size_t length,
 size_t size
 )
{
 u_char digest[EVP_MAX_MD_SIZE];
 rwbuffT digb = { digest, sizeof(digest) };
 robuffT keyb = { key, klen };
 robuffT msgb = { pkt, length };
 size_t dlen = 0;

 dlen = make_mac(&digb, type, &keyb, &msgb);


 if (dlen > MAX_MDG_LEN)
  dlen = MAX_MDG_LEN;
 if (size != (size_t)dlen + KEY_MAC_LEN) {
  msyslog(LOG_ERR,
      "MAC decrypt: MAC length error");
  return (0);
 }
 return !isc_tsmemcmp(digest,
   (u_char *)pkt + length + KEY_MAC_LEN, dlen);
}
