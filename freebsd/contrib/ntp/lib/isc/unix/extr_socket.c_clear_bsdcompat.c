
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* release; } ;


 int ISC_FALSE ;
 int bsdcompat ;
 long strtol (char*,char**,int) ;
 int uname (struct utsname*) ;

__attribute__((used)) static void
clear_bsdcompat(void) {

  struct utsname buf;
  char *endp;
  long int major;
  long int minor;

  uname(&buf);


  major = strtol(buf.release, &endp, 10);
  if (*endp == '.') {
  minor = strtol(endp+1, &endp, 10);
  if ((major > 2) || ((major == 2) && (minor >= 4))) {
   bsdcompat = ISC_FALSE;
  }
  }

}
