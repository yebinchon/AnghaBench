
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
is_possible_path_name(const char * name)
{
    const char * colon;

    if ((colon = strchr(name, ':')) == ((void*)0))
        return TRUE;
    return FALSE;
}
