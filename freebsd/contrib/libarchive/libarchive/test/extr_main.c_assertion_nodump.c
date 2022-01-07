
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT2_IOC_GETFLAGS ;
 int EXT2_IOC_SETFLAGS ;
 int EXT2_NODUMP_FL ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int UF_NODUMP ;
 int assertion_count (char const*,int) ;
 int chflags (char const*,int ) ;
 int close (int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;
 int ioctl (int,int ,int*) ;
 int open (char const*,int) ;

int
assertion_nodump(const char *file, int line, const char *pathname)
{
 (void)pathname;
 assertion_count(file, line);

 return (1);
}
