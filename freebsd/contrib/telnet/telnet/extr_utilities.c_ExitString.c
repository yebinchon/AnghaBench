
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetForExit () ;
 int exit (int) ;
 int fwrite (char const*,int,int ,int ) ;
 int stderr ;
 int strlen (char const*) ;

void
ExitString(const char *string, int returnCode)
{
    SetForExit();
    fwrite(string, 1, strlen(string), stderr);
    exit(returnCode);
}
