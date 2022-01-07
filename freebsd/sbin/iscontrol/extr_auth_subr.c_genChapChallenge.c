
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int tmp ;


 int O_RDONLY ;
 char* bin2str (char*,unsigned char*,int) ;
 int close (int) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int read (int,unsigned char*,int) ;

char *
genChapChallenge(char *encoding, uint len)
{
     int fd;
     unsigned char tmp[1024];

     if(len > sizeof(tmp))
   return ((void*)0);

     if((fd = open("/dev/random", O_RDONLY)) != -1) {
   read(fd, tmp, len);
   close(fd);
   return bin2str(encoding, tmp, len);
     }
     perror("/dev/random");

     return ((void*)0);
}
