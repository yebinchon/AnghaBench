
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;
typedef int intbuf ;
typedef scalar_t__ int64_t ;


 int snprintf (char*,int,char*,int ) ;
 int strlen (char*) ;
 int write (int,char*,int ) ;

__attribute__((used)) static int
ucl_fd_append_int (int64_t val, void *ud)
{
 int fd = *(int *)ud;
 char intbuf[64];

 snprintf (intbuf, sizeof (intbuf), "%jd", (intmax_t)val);
 return write (fd, intbuf, strlen (intbuf));
}
