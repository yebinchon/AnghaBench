
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 int _IOFBF ;
 int _IOLBF ;
 int _IONBF ;
 scalar_t__ errno ;
 scalar_t__ setvbuf (int *,int *,int,size_t) ;
 int stream_name (int *) ;
 size_t strtol (char const*,char**,int ) ;
 int warn (char*,char const*,int ) ;
 int warnx (char*,char,int ) ;

__attribute__((used)) static void
change_buf(FILE *s, const char *bufmode)
{
 char *unit;
 size_t bufsize;
 int mode;

 bufsize = 0;
 if (bufmode[0] == '0' && bufmode[1] == '\0')
  mode = _IONBF;
 else if (bufmode[0] == 'L' && bufmode[1] == '\0')
  mode = _IOLBF;
 else if (bufmode[0] == 'B' && bufmode[1] == '\0') {
  mode = _IOFBF;
  bufsize = 0;
 } else {





  errno = 0;
  bufsize = strtol(bufmode, &unit, 0);
  if (errno == EINVAL || errno == ERANGE || unit == bufmode)
   warn("Wrong buffer mode '%s' for %s", bufmode,
       stream_name(s));
  switch (*unit) {
  case 'G':
   bufsize *= 1024 * 1024 * 1024;
   break;
  case 'M':
   bufsize *= 1024 * 1024;
   break;
  case 'k':
   bufsize *= 1024;
   break;
  case '\0':
   break;
  default:
   warnx("Unknown suffix '%c' for %s", *unit,
       stream_name(s));
   return;
  }
  mode = _IOFBF;
 }
 if (setvbuf(s, ((void*)0), mode, bufsize) != 0)
  warn("Cannot set buffer mode '%s' for %s", bufmode,
      stream_name(s));
}
