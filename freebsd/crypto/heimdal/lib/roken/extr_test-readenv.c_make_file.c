
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int err (int,char*) ;
 int mkstemp (char*) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void
make_file(char *tmpl, size_t l)
{
    int fd;
    strlcpy(tmpl, "env.XXXXXX", l);
    fd = mkstemp(tmpl);
    if(fd < 0)
 err(1, "mkstemp");
    close(fd);
}
