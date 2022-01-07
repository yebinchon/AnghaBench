
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXT_COPY_ADD ;
 int EXT_COPY_ALL ;
 int EXT_COPY_NONE ;
 scalar_t__ strcasecmp (char const*,char*) ;

int set_ext_copy(int *copy_type, const char *arg)
{
    if (strcasecmp(arg, "none") == 0)
        *copy_type = EXT_COPY_NONE;
    else if (strcasecmp(arg, "copy") == 0)
        *copy_type = EXT_COPY_ADD;
    else if (strcasecmp(arg, "copyall") == 0)
        *copy_type = EXT_COPY_ALL;
    else
        return 0;
    return 1;
}
