
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int list_files (int *,char const**,int,int) ;
 int parse_flags (char const*) ;
 int sec_fflush (int *) ;

int
builtin_ls(FILE *out, const char *file)
{
    int flags;
    int ret;

    if(*file == '-') {
 flags = parse_flags(file);
 file = ".";
    } else
 flags = parse_flags("");

    ret = list_files(out, &file, 1, flags);
    sec_fflush(out);
    return ret;
}
