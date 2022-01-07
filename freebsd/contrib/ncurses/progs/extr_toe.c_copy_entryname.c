
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d_name; } ;
typedef TYPE_1__ DIRENT ;


 size_t NAMLEN (TYPE_1__*) ;
 int failed (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,int ,size_t) ;

__attribute__((used)) static char *
copy_entryname(DIRENT * src)
{
    size_t len = NAMLEN(src);
    char *result = malloc(len + 1);
    if (result == 0)
 failed("copy entryname");
    memcpy(result, src->d_name, len);
    result[len] = '\0';

    return result;
}
