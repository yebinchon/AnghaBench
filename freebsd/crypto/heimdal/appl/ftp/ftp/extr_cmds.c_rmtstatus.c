
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int command (char*,char*) ;

void
rmtstatus(int argc, char **argv)
{

 command(argc > 1 ? "STAT %s" : "STAT" , argv[1]);
}
