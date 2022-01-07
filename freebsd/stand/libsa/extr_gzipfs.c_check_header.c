
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
struct z_file {scalar_t__ zf_dataoffset; } ;


 int COMMENT ;
 int EXTRA_FIELD ;
 int HEAD_CRC ;
 int ORIG_NAME ;
 int RESERVED ;
 int Z_DEFLATED ;
 int get_byte (struct z_file*,scalar_t__*) ;
 int* gz_magic ;

__attribute__((used)) static int
check_header(struct z_file *zf)
{
    int method;
    int flags;
    uInt len;
    int c;

    zf->zf_dataoffset = 0;

    for (len = 0; len < 2; len++) {
 c = get_byte(zf, &zf->zf_dataoffset);
 if (c != gz_magic[len]) {
     return(1);
 }
    }
    method = get_byte(zf, &zf->zf_dataoffset);
    flags = get_byte(zf, &zf->zf_dataoffset);
    if (method != Z_DEFLATED || (flags & RESERVED) != 0) {
 return(1);
    }


    for (len = 0; len < 6; len++) (void)get_byte(zf, &zf->zf_dataoffset);

    if ((flags & EXTRA_FIELD) != 0) {
 len = (uInt)get_byte(zf, &zf->zf_dataoffset);
 len += ((uInt)get_byte(zf, &zf->zf_dataoffset))<<8;

 while (len-- != 0 && get_byte(zf, &zf->zf_dataoffset) != -1) ;
    }
    if ((flags & ORIG_NAME) != 0) {
 while ((c = get_byte(zf, &zf->zf_dataoffset)) != 0 && c != -1) ;
    }
    if ((flags & COMMENT) != 0) {
 while ((c = get_byte(zf, &zf->zf_dataoffset)) != 0 && c != -1) ;
    }
    if ((flags & HEAD_CRC) != 0) {
 for (len = 0; len < 2; len++) c = get_byte(zf, &zf->zf_dataoffset);
    }

    return((c == -1) ? 1 : 0);
}
