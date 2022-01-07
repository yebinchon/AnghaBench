
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TYPE_I ;
 scalar_t__ curtype ;
 int getit (int,char**,int ,char*) ;
 scalar_t__ restart_point ;

void
get(int argc, char **argv)
{
    char *filemode;

    if (restart_point) {
 if (curtype == TYPE_I)
     filemode = "r+wb";
 else
     filemode = "r+w";
    } else {
 if (curtype == TYPE_I)
     filemode = "wb";
 else
     filemode = "w";
    }

    getit(argc, argv, 0, filemode);
}
