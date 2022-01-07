
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetForExit () ;
 int exit (int) ;

void
Exit(int returnCode)
{
    SetForExit();
    exit(returnCode);
}
