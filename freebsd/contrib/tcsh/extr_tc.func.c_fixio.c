
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ioctl_t ;





 int FIONBIO ;
 int FNBIO ;
 int FNDELAY ;
 int FNDLEAY ;
 int FNONBIO ;
 int FNONBLOCK ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NDELAY ;
 int O_NONBLOCK ;
 int _FNBIO ;
 int _FNDELAY ;
 int _FNONBLOCK ;
 int fcntl (int,int ,int) ;
 int ioctl (int,int ,int ) ;

int
fixio(int fd, int e)
{
    switch (e) {
    case -1:


    case 128:
 e = -1;
 return e;

    case 129:
 return 0;

    default:
 return -1;
    }
}
