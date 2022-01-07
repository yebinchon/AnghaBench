
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _gr_filesdone ;
 int * _gr_fp ;
 int * fopen (char*,char*) ;
 char* grfile ;
 int rewind (int *) ;
 int warn (char*,char*) ;

__attribute__((used)) static int
grstart(void)
{

 _gr_filesdone = 0;
 if (_gr_fp) {
  rewind(_gr_fp);
  return 1;
 }
 if (grfile[0] == '\0')
  return 0;

 _gr_fp = fopen(grfile, "r");
 if (_gr_fp != ((void*)0))
  return 1;
 warn("Can't open `%s'", grfile);
 return 0;
}
