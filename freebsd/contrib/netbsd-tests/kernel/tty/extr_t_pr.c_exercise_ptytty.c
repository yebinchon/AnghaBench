
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREAD ;
 int FWRITE ;
 int TIOCFLUSH ;
 int rump_sys_ioctl (int,int ,int*) ;
 int sendsome (int,int) ;

__attribute__((used)) static int
exercise_ptytty(int master, int slave)
{
 int error, flags;




 error = sendsome(master, slave);
 if (error)
  return error;

 flags = FREAD|FWRITE;
 rump_sys_ioctl(master, TIOCFLUSH, &flags);




 error = sendsome(slave, master);
 if (error)
  return error;

 flags = FREAD|FWRITE;
 rump_sys_ioctl(master, TIOCFLUSH, &flags);
 return 0;
}
