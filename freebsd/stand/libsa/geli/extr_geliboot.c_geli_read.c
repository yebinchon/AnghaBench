
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int u_char ;
struct TYPE_3__ {size_t sc_sectorsize; int sc_ekeylen; int sc_ealgo; } ;
struct geli_dev {TYPE_1__ sc; } ;
struct g_eli_key {int gek_key; } ;
typedef size_t off_t ;
typedef int gkey ;


 int G_ELI_IVKEYLEN ;
 size_t G_ELI_KEY_SHIFT ;
 int explicit_bzero (struct g_eli_key*,int) ;
 int g_eli_crypto_ivgen (TYPE_1__*,size_t,int *,int) ;
 int g_eli_key_fill (TYPE_1__*,struct g_eli_key*,size_t) ;
 int geliboot_crypt (int ,int ,int *,size_t,int ,int ,int *) ;
 int printf (char*) ;

int
geli_read(struct geli_dev *gdev, off_t offset, u_char *buf, size_t bytes)
{
 u_char iv[G_ELI_IVKEYLEN];
 u_char *pbuf;
 int error;
 off_t dstoff;
 uint64_t keyno;
 size_t n, nsec, secsize;
 struct g_eli_key gkey;

 pbuf = buf;

 secsize = gdev->sc.sc_sectorsize;
 nsec = bytes / secsize;
 if (nsec == 0) {






  secsize = bytes;
  nsec = 1;
 }

 for (n = 0, dstoff = offset; n < nsec; n++, dstoff += secsize) {

  g_eli_crypto_ivgen(&gdev->sc, dstoff, iv, G_ELI_IVKEYLEN);


  keyno = (dstoff >> G_ELI_KEY_SHIFT) / secsize;
  g_eli_key_fill(&gdev->sc, &gkey, keyno);

  error = geliboot_crypt(gdev->sc.sc_ealgo, 0, pbuf, secsize,
      gkey.gek_key, gdev->sc.sc_ekeylen, iv);

  if (error != 0) {
   explicit_bzero(&gkey, sizeof(gkey));
   printf("Failed to decrypt in geli_read()!");
   return (error);
  }
  pbuf += secsize;
 }
 explicit_bzero(&gkey, sizeof(gkey));
 return (0);
}
