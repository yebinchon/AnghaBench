
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 char* canonicalize_file_name (char*) ;
 int free (char*) ;
 int memcpy (char*,char*,size_t) ;
 int * realpath (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static bool
get_realpath(char * buf, size_t b_sz)
{
    return 1;
}
