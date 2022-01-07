
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int strlen (char const*) ;
 size_t write (int,char const*,int) ;

void
__archive_errx(int retvalue, const char *msg)
{
 static const char msg1[] = "Fatal Internal Error in libarchive: ";
 size_t s;

 s = write(2, msg1, strlen(msg1));
 (void)s;
 s = write(2, msg, strlen(msg));
 (void)s;
 s = write(2, "\n", 1);
 (void)s;
 exit(retvalue);
}
