
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {char* f_mntfromname; char* f_mntonname; scalar_t__ f_bresvd; scalar_t__ f_bavail; scalar_t__ f_bfree; scalar_t__ f_blocks; int f_frsize; int f_bsize; } ;


 scalar_t__ AVAIL ;
 int BSIZE ;
 scalar_t__ TOTAL ;
 scalar_t__ USED ;
 struct statvfs* getnewstatvfs () ;

__attribute__((used)) static void
setup_pr23600(void)
{
 static const struct statvfs tmpl = {




  .f_bsize = 512,
  .f_frsize = 512,
  .f_blocks = 20971376ULL,
  .f_bfree = 20971376ULL - 5719864ULL,
  .f_bavail = 15251512ULL,
  .f_bresvd = 20971376ULL - 5719864ULL - 15251512ULL,
  .f_mntfromname = "/dev/wd0e",
  .f_mntonname = "/mount/windows/C",




 };

 *getnewstatvfs() = tmpl;
}
