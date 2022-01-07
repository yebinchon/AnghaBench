
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPLETE ;
 int code ;
 int command (char*) ;
 int printf (char*,char*) ;

void
klist(int argc, char **argv)
{
    int ret;
    if(argc != 1){
 printf("usage: %s\n", argv[0]);
 code = -1;
 return;
    }

    ret = command("SITE KLIST");
    code = (ret == COMPLETE);
}
