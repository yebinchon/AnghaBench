
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char const*) ;

__attribute__((used)) static char *
path_to_file_dp(const char *relpath)
{
 char *rv;

 asprintf(&rv, "File(%s)", relpath);
 return rv;
}
