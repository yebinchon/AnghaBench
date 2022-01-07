
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UChar (char const) ;

__attribute__((used)) static int
skip_csi(const char *cap)
{
    int result = 0;
    if (cap[0] == '\033' && cap[1] == '[')
 result = 2;
    else if (UChar(cap[0]) == 0233)
 result = 1;
    return result;
}
