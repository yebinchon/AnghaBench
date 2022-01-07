
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*) ;
 int usage (char const*) ;

int bad_usage(const char* exeName)
{
    DISPLAY (" bad usage : \n");
    usage(exeName);
    return 1;
}
