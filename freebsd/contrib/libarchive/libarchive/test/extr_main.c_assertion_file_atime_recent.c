
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertion_file_time (char const*,int,char const*,int ,int ,char,int) ;

int
assertion_file_atime_recent(const char *file, int line, const char *pathname)
{
 return assertion_file_time(file, line, pathname, 0, 0, 'a', 1);
}
