
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_params {int serial; int revision; int model; } ;
typedef int int16_t ;


 int ata_bpack (int ,int ,int) ;
 int ata_bswap (int ,int) ;
 int ata_btrim (int ,int) ;
 int le16toh (int ) ;
 scalar_t__ strncmp (int ,char*,int) ;

void
ata_param_fixup(struct ata_params *ident_buf)
{
 int16_t *ptr;

 for (ptr = (int16_t *)ident_buf;
      ptr < (int16_t *)ident_buf + sizeof(struct ata_params)/2; ptr++) {
  *ptr = le16toh(*ptr);
 }
 if (strncmp(ident_buf->model, "FX", 2) &&
     strncmp(ident_buf->model, "NEC", 3) &&
     strncmp(ident_buf->model, "Pioneer", 7) &&
     strncmp(ident_buf->model, "SHARP", 5)) {
  ata_bswap(ident_buf->model, sizeof(ident_buf->model));
  ata_bswap(ident_buf->revision, sizeof(ident_buf->revision));
  ata_bswap(ident_buf->serial, sizeof(ident_buf->serial));
 }
 ata_btrim(ident_buf->model, sizeof(ident_buf->model));
 ata_bpack(ident_buf->model, ident_buf->model, sizeof(ident_buf->model));
 ata_btrim(ident_buf->revision, sizeof(ident_buf->revision));
 ata_bpack(ident_buf->revision, ident_buf->revision, sizeof(ident_buf->revision));
 ata_btrim(ident_buf->serial, sizeof(ident_buf->serial));
 ata_bpack(ident_buf->serial, ident_buf->serial, sizeof(ident_buf->serial));
}
