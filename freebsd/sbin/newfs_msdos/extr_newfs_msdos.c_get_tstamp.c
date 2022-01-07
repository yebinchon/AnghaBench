
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_mtime; } ;


 int EXIT_FAILURE ;
 scalar_t__ errno ;
 int errx (int ,char*,char const*) ;
 int stat (char const*,struct stat*) ;
 long long strtoll (char const*,char**,int ) ;

__attribute__((used)) static time_t
get_tstamp(const char *b)
{
    struct stat st;
    char *eb;
    long long l;

    if (stat(b, &st) != -1)
        return (time_t)st.st_mtime;

    errno = 0;
    l = strtoll(b, &eb, 0);
    if (b == eb || *eb || errno)
        errx(EXIT_FAILURE, "Can't parse timestamp '%s'", b);
    return (time_t)l;
}
