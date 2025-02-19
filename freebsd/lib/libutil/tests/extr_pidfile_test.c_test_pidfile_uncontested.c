
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int dummy; } ;
typedef scalar_t__ pid_t ;


 int errno ;
 int pidfile_close (struct pidfh*) ;
 struct pidfh* pidfile_open (char const*,int,scalar_t__*) ;
 scalar_t__ pidfile_write (struct pidfh*) ;
 char const* strerror (int ) ;
 int unlink (char const*) ;

__attribute__((used)) static const char *
test_pidfile_uncontested(void)
{
 const char *fn = "test_pidfile_uncontested";
 struct pidfh *pf;
 pid_t other = 0;

 unlink(fn);
 pf = pidfile_open(fn, 0600, &other);
 if (pf == ((void*)0) && other != 0)
  return ("pidfile exists and is locked");
 if (pf == ((void*)0))
  return (strerror(errno));
 if (pidfile_write(pf) != 0) {
  pidfile_close(pf);
  unlink(fn);
  return ("failed to write PID");
 }
 pidfile_close(pf);
 unlink(fn);
 return (((void*)0));
}
