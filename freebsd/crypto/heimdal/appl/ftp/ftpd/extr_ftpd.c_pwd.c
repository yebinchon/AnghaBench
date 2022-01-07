
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;


 int MaxPathLen ;
 int errno ;
 char* getcwd (char*,int) ;
 int reply (int,char*,char*) ;
 char* strerror (int ) ;

void
pwd(void)
{
    char path[MaxPathLen];
    char *ret;




    ret = getcwd(path, sizeof(path));
    if (ret == ((void*)0))
 reply(550, "%s.", strerror(errno));
    else
 reply(257, "\"%s\" is current directory.", path);
}
