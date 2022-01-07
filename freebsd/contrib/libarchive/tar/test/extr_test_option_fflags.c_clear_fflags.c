
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT2_IOC_GETFLAGS ;
 int FS_IOC_GETFLAGS ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int chflags (char const*,int ) ;
 int ioctl (int,int ,int ,int ) ;
 int open (char const*,int) ;

__attribute__((used)) static void
clear_fflags(const char *pathname)
{
 (void)pathname;

 return;
}
