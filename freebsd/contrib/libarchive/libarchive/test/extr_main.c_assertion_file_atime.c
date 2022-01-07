
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertion_file_time (char const*,int,char const*,long,long,char,int ) ;

int
assertion_file_atime(const char *file, int line,
    const char *pathname, long t, long nsec)
{
 return assertion_file_time(file, line, pathname, t, nsec, 'a', 0);
}
