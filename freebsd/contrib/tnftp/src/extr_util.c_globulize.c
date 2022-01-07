
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ gl_pathc; char const** gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef int gl ;


 int GLOB_BRACE ;
 int GLOB_NOCHECK ;
 int GLOB_TILDE ;
 int doglob ;
 char* ftp_strdup (char const*) ;
 scalar_t__ glob (char const*,int,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int warnx (char*,char const*) ;

char *
globulize(const char *pattern)
{
 glob_t gl;
 int flags;
 char *p;

 if (!doglob)
  return (ftp_strdup(pattern));

 flags = GLOB_BRACE|GLOB_NOCHECK|GLOB_TILDE;
 memset(&gl, 0, sizeof(gl));
 if (glob(pattern, flags, ((void*)0), &gl) || gl.gl_pathc == 0) {
  warnx("Glob pattern `%s' not found", pattern);
  globfree(&gl);
  return (((void*)0));
 }
 p = ftp_strdup(gl.gl_pathv[0]);
 globfree(&gl);
 return (p);
}
