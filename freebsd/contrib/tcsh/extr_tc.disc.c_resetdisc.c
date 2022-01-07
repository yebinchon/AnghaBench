
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ioctl_t ;


 int TCSETAF ;
 int TIOCSETD ;
 int TXDELCD ;
 int USE (int) ;
 scalar_t__ add_discipline ;
 int ioctl (int,int ,int ) ;
 int oldisc ;
 int otermiob ;
 scalar_t__ strPOSIX ;

int

resetdisc(int f)
{
    if (add_discipline) {
 add_discipline = 0;
    }
    USE(f);
    return (0);
}
