
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char xfi_ftype; scalar_t__ xfi_encoding; scalar_t__ xfi_elen; scalar_t__ xfi_format; scalar_t__ xfi_flen; scalar_t__ xfi_content; scalar_t__ xfi_clen; scalar_t__ xfi_flags; int xfi_fnum; } ;
typedef TYPE_1__ xo_field_info_t ;


 scalar_t__ isprint (int) ;
 int printf (char*,unsigned long,int ,unsigned long,char,char,int,char*,int,char*,int,char*) ;

void
xo_dump_fields (xo_field_info_t *fields)
{
    xo_field_info_t *xfip;

    for (xfip = fields; xfip->xfi_ftype; xfip++) {
 printf("%lu(%u): %lx [%c/%u] [%.*s] [%.*s] [%.*s]\n",
        (unsigned long) (xfip - fields), xfip->xfi_fnum,
        (unsigned long) xfip->xfi_flags,
        isprint((int) xfip->xfi_ftype) ? xfip->xfi_ftype : ' ',
        xfip->xfi_ftype,
        (int) xfip->xfi_clen, xfip->xfi_content ?: "",
        (int) xfip->xfi_flen, xfip->xfi_format ?: "",
        (int) xfip->xfi_elen, xfip->xfi_encoding ?: "");
    }
}
