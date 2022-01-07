
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int errno ;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;
 char* strerror (int) ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void __attribute__((__format__(__printf__, 1, 0)))
vwarning(const char *fmt, va_list ap)
{
 int serrno = errno;
 (void) fprintf(stderr, "%s: ", progname);
 vfprintf(stderr, fmt, ap);
 (void) fprintf(stderr, ": %s\n", strerror(serrno));
}
