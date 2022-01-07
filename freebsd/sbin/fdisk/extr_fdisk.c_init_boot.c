
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_2__ {int bootinst_size; int * bootinst; } ;


 int O_RDONLY ;
 char* b_flag ;
 scalar_t__ close (int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 int free (int *) ;
 int fstat (int,struct stat*) ;
 int * malloc (int) ;
 TYPE_1__ mboot ;
 int open (char const*,int ) ;
 int read (int,int *,int) ;
 int secsize ;

__attribute__((used)) static void
init_boot(void)
{
 const char *fname;
 int fdesc, n;
 struct stat sb;

 fname = b_flag ? b_flag : "/boot/mbr";
 if ((fdesc = open(fname, O_RDONLY)) == -1 ||
     fstat(fdesc, &sb) == -1)
  err(1, "%s", fname);
 if (sb.st_size == 0)
  errx(1, "%s is empty, must not be.", fname);
 if ((mboot.bootinst_size = sb.st_size) % secsize != 0)
  errx(1, "%s: length must be a multiple of sector size", fname);
 if (mboot.bootinst != ((void*)0))
  free(mboot.bootinst);
 if ((mboot.bootinst = malloc(mboot.bootinst_size = sb.st_size)) == ((void*)0))
  errx(1, "%s: unable to allocate read buffer", fname);
 if ((n = read(fdesc, mboot.bootinst, mboot.bootinst_size)) == -1 ||
     close(fdesc))
  err(1, "%s", fname);
 if (n != mboot.bootinst_size)
  errx(1, "%s: short read", fname);
}
