
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct package {int pkg_fd; int pkg_zs; } ;
typedef scalar_t__ off_t ;


 int COMMENT ;
 int EFTYPE ;
 int ENOMEM ;
 int EXTRA_FIELD ;
 int HEAD_CRC ;
 int ORIG_NAME ;
 int RESERVED ;
 int Z_DEFLATED ;
 int Z_OK ;
 int bzero (struct package*,int) ;
 int free (struct package*) ;
 int get_byte (struct package*,scalar_t__*) ;
 int inflateInit2 (int *,int) ;
 struct package* malloc (int) ;
 int putchar (int) ;

__attribute__((used)) static int
new_package(int fd, struct package **pp)
{
 struct package *pkg;
 off_t ofs;
 int flags, i, error;

 pkg = malloc(sizeof(*pkg));
 if (pkg == ((void*)0))
  return (ENOMEM);

 bzero(pkg, sizeof(*pkg));
 pkg->pkg_fd = fd;




 error = EFTYPE;
 ofs = 0;


 if (get_byte(pkg, &ofs) != 0x1f || get_byte(pkg, &ofs) != 0x8b)
  goto fail;

 if (get_byte(pkg, &ofs) != Z_DEFLATED)
  goto fail;

 flags = get_byte(pkg, &ofs);
 if (flags & RESERVED)
  goto fail;


 for (i = 0; i < 6; i++) {
  if (get_byte(pkg, &ofs) == -1)
   goto fail;
 }


 if (flags & EXTRA_FIELD) {
  i = (get_byte(pkg, &ofs) & 0xff) |
      ((get_byte(pkg, &ofs) << 8) & 0xff);
  while (i-- > 0) {
   if (get_byte(pkg, &ofs) == -1)
    goto fail;
  }
 }


 if (flags & ORIG_NAME) {
  do {
   i = get_byte(pkg, &ofs);
  } while (i != 0 && i != -1);
  if (i == -1)
   goto fail;
 }


 if (flags & COMMENT) {
  while (1) {
   i = get_byte(pkg, &ofs);
   if (i == -1)
    goto fail;
   if (i == 0)
    break;
   putchar(i);
  }
 }


 if (flags & HEAD_CRC) {
  if (get_byte(pkg, &ofs) == -1)
   goto fail;
  if (get_byte(pkg, &ofs) == -1)
   goto fail;
 }




 error = inflateInit2(&pkg->pkg_zs, -15);
 if (error != Z_OK)
  goto fail;

 *pp = pkg;
 return (0);

 fail:
 free(pkg);
 return (error);
}
