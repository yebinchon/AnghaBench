
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_mode; } ;
struct stats {TYPE_1__ stat; } ;


 void* ALIGN_TO (scalar_t__,int) ;
 int * BZ2_bzdopen (int,char*) ;
 scalar_t__ BZflag ;
 scalar_t__ INITIAL_BUFSIZE ;
 int SEEK_CUR ;
 scalar_t__ SKIP_DEVICES ;
 scalar_t__ SKIP_DIRECTORIES ;
 int STDIN_FILENO ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 scalar_t__ Zflag ;
 char* _ (char*) ;
 int abort () ;
 void* bufalloc ;
 int * bufbeg ;
 int bufdesc ;
 scalar_t__ buffer ;
 int * buflim ;
 int bufmapped ;
 int bufoffset ;
 int * bzbufdesc ;
 scalar_t__ devices ;
 scalar_t__ directories ;
 int eolbyte ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ fstat (int,TYPE_1__*) ;
 int getpagesize () ;
 int * gzbufdesc ;
 int * gzdopen (int,char*) ;
 int initial_bufoffset ;
 int lseek (int,int ,int ) ;
 scalar_t__ mmap_option ;
 int pagesize ;
 scalar_t__ xmalloc (void*) ;

__attribute__((used)) static int
reset (int fd, char const *file, struct stats *stats)
{
  if (! pagesize)
    {
      pagesize = getpagesize ();
      if (pagesize == 0 || 2 * pagesize + 1 <= pagesize)
 abort ();
      bufalloc = ALIGN_TO (INITIAL_BUFSIZE, pagesize) + pagesize + 1;
      buffer = xmalloc (bufalloc);
    }
  if (BZflag)
    {
    bzbufdesc = BZ2_bzdopen(fd, "r");
    if (bzbufdesc == ((void*)0))
      error(2, 0, _("memory exhausted"));
    }
  bufbeg = buflim = ALIGN_TO (buffer + 1, pagesize);
  bufbeg[-1] = eolbyte;
  bufdesc = fd;

  if (fstat (fd, &stats->stat) != 0)
    {
      error (0, errno, "fstat");
      return 0;
    }
  if (fd != STDIN_FILENO) {
    if (directories == SKIP_DIRECTORIES && S_ISDIR (stats->stat.st_mode))
      return 0;

    if (devices == SKIP_DEVICES && (S_ISCHR(stats->stat.st_mode) || S_ISBLK(stats->stat.st_mode) || S_ISSOCK(stats->stat.st_mode) || S_ISFIFO(stats->stat.st_mode)))



      return 0;
  }
  if (
      BZflag ||



      S_ISREG (stats->stat.st_mode))
    {
      if (file)
 bufoffset = 0;
      else
 {
   bufoffset = lseek (fd, 0, SEEK_CUR);
   if (bufoffset < 0)
     {
       error (0, errno, "lseek");
       return 0;
     }
 }




    }
  else
    {



    }
  return 1;
}
