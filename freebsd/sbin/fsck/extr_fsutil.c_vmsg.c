
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 char* dev ;
 int exit (int) ;
 char* getprogname () ;
 scalar_t__ preen ;
 int printf (char*,...) ;
 int vprintf (char const*,int ) ;

__attribute__((used)) static void
vmsg(int fatal, const char *fmt, va_list ap)
{
 if (!fatal && preen)
  (void) printf("%s: ", dev);

 (void) vprintf(fmt, ap);

 if (fatal && preen)
  (void) printf("\n");

 if (fatal && preen) {
  (void) printf(
      "%s: UNEXPECTED INCONSISTENCY; RUN %s MANUALLY.\n",
      dev, getprogname());
  exit(8);
 }
}
