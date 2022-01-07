
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _pw_filesdone ;
 int * _pw_fp ;
 int * fopen (char*,char*) ;
 char* pwfile ;
 int rewind (int *) ;
 int warn (char*,char*) ;

__attribute__((used)) static int
pwstart(void)
{

 _pw_filesdone = 0;
 if (_pw_fp) {
  rewind(_pw_fp);
  return 1;
 }
 if (pwfile[0] == '\0')
  return 0;
 _pw_fp = fopen(pwfile, "r");
 if (_pw_fp != ((void*)0))
  return 1;
 warn("Can't open `%s'", pwfile);
 return 0;
}
