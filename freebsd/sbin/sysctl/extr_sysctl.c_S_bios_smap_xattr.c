
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct bios_smap_xattr {int type; int xattr; scalar_t__ length; scalar_t__ base; } ;


 int printf (char*,int,int,int ,int ) ;
 int warnx (char*,size_t,int) ;

__attribute__((used)) static int
S_bios_smap_xattr(size_t l2, void *p)
{
 struct bios_smap_xattr *smap, *end;

 if (l2 % sizeof(*smap) != 0) {
  warnx("S_bios_smap_xattr %zu is not a multiple of %zu", l2,
      sizeof(*smap));
  return (1);
 }

 end = (struct bios_smap_xattr *)((char *)p + l2);
 for (smap = p; smap < end; smap++)
  printf("\nSMAP type=%02x, xattr=%02x, base=%016jx, len=%016jx",
      smap->type, smap->xattr, (uintmax_t)smap->base,
      (uintmax_t)smap->length);
 return (0);
}
