
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; int st_size; } ;


 int DEV_BSIZE ;
 int S_IFLNK ;
 int S_IFMT ;
 int S_IFREG ;
 int err (int,char*) ;
 int errx (int,char*,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int mediasize ;
 int secsize ;
 int specname ;

__attribute__((used)) static void
get_file_parms(int f)
{
 int i;
 struct stat sb;

 if (fstat(f, &sb) != 0)
  err(4, "fstat failed");
 i = sb.st_mode & S_IFMT;
 if (i != S_IFREG && i != S_IFLNK)
  errx(4, "%s is not a valid file or link", specname);
 secsize = DEV_BSIZE;
 mediasize = sb.st_size;
}
