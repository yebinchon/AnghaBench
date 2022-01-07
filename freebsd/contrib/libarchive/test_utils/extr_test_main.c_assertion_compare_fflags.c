
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_flags; } ;


 int EXT2_IOC_GETFLAGS ;
 int FS_IOC_GETFLAGS ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int assertion_count (char const*,int) ;
 int close (int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*,...) ;
 int ioctl (int,int ,int ,int*) ;
 int open (char const*,int) ;
 scalar_t__ stat (char const*,struct stat*) ;

int
assertion_compare_fflags(const char *file, int line, const char *patha,
    const char *pathb, int nomatch)
{
 (void)patha;
 (void)pathb;
 (void)nomatch;
 assertion_count(file, line);

 return (1);
}
