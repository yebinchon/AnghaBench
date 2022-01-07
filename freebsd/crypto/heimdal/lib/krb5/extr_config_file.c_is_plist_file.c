
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suffix ;


 scalar_t__ strcasecmp (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
is_plist_file(const char *fname)
{
    size_t len = strlen(fname);
    char suffix[] = ".plist";
    if (len < sizeof(suffix))
 return 0;
    if (strcasecmp(&fname[len - (sizeof(suffix) - 1)], suffix) != 0)
 return 0;
    return 1;
}
