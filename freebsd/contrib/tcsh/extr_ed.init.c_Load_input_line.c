
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ioctl_t ;
typedef int Char ;


 int BUFSIZE ;
 int ERR_SYSTEM ;
 int FIONREAD ;
 int PushMacro (int *) ;
 int SHIN ;
 int * Strsave (int ) ;
 scalar_t__ Tty_raw_mode ;
 int errno ;
 int ioctl (int ,int ,int ) ;
 int min (int,int) ;
 int progname ;
 int stderror (int ,int ,int ) ;
 int str2short (char*) ;
 int strerror (int ) ;
 int xfree (int *) ;
 int xread (int ,char*,int ) ;

int
Load_input_line(void)
{
    static Char *Input_Line = ((void*)0);







    int chrs = 0;


    if (Input_Line)
 xfree(Input_Line);
    Input_Line = ((void*)0);

    if (Tty_raw_mode)
 return 0;
    return chrs > 0;
}
