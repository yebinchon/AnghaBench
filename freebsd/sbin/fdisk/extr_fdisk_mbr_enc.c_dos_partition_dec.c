
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dos_partition {unsigned char dp_flag; unsigned char dp_shd; unsigned char dp_ssect; unsigned char dp_scyl; unsigned char dp_typ; unsigned char dp_ehd; unsigned char dp_esect; unsigned char dp_ecyl; void* dp_size; void* dp_start; } ;


 void* le32dec (unsigned char const*) ;

void
dos_partition_dec(void const *pp, struct dos_partition *d)
{
 unsigned char const *p = pp;

 d->dp_flag = p[0];
 d->dp_shd = p[1];
 d->dp_ssect = p[2];
 d->dp_scyl = p[3];
 d->dp_typ = p[4];
 d->dp_ehd = p[5];
 d->dp_esect = p[6];
 d->dp_ecyl = p[7];
 d->dp_start = le32dec(p + 8);
 d->dp_size = le32dec(p + 12);
}
