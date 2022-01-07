
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stricmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
is_valid_plugin_filename(const char * n)
{
    if (n[0] == '.' && (n[1] == '\0' || (n[1] == '.' && n[2] == '\0')))
        return 0;
    return 1;

}
