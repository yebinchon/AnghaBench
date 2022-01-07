
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetForExit () ;
 int exit (int) ;
 int fwrite (char*,int,int ,int ) ;
 int stderr ;
 int strlen (char*) ;

void
ExitString(char *string, int returnCode)
{
    SetForExit();
    fwrite(string, 1, strlen(string), stderr);
    exit(returnCode);
}
