
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISCHR (int ) ;
 int perr (char*,...) ;
 scalar_t__ stat (char const*,struct stat*) ;

const char *
devcheck(const char *origname)
{
 struct stat stslash, stchar;

 if (stat("/", &stslash) < 0) {
  perr("Can't stat `/'");
  return (origname);
 }
 if (stat(origname, &stchar) < 0) {
  perr("Can't stat %s\n", origname);
  return (origname);
 }
 if (!S_ISCHR(stchar.st_mode)) {
  perr("%s is not a char device\n", origname);
 }
 return (origname);
}
