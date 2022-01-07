
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TYPE_I ;
 scalar_t__ curtype ;
 int getit (int,char**,int,char*) ;

void
reget(int argc, char **argv)
{
    getit(argc, argv, 1, curtype == TYPE_I ? "r+wb" : "r+w");
}
