
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct inoinfo {size_t i_number; struct inoinfo* i_nexthash; } ;
typedef size_t ino_t ;


 int EEXIT ;
 size_t dirhash ;
 int errx (int ,char*,int ) ;
 struct inoinfo** inphead ;

struct inoinfo *
getinoinfo(ino_t inumber)
{
 struct inoinfo *inp;

 for (inp = inphead[inumber % dirhash]; inp; inp = inp->i_nexthash) {
  if (inp->i_number != inumber)
   continue;
  return (inp);
 }
 errx(EEXIT, "cannot find inode %ju", (uintmax_t)inumber);
 return ((struct inoinfo *)0);
}
