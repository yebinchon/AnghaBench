
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char*
extractFilename(const char* path, char separator)
{
    const char* search = strrchr(path, separator);
    if (search == ((void*)0)) return path;
    return search+1;
}
