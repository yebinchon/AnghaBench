
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ gl_pathc; int * gl_pathv; } ;
typedef TYPE_1__ glob_t ;
typedef int gl ;


 int GLOB_BRACE ;
 int GLOB_NOCHECK ;
 int GLOB_QUOTE ;
 int GLOB_TILDE ;
 int doglob ;
 scalar_t__ glob (char*,int,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 char* strdup (int ) ;
 int warnx (char*,char*) ;

int
globulize(char **cpp)
{
 glob_t gl;
 int flags;

 if (!doglob)
  return (1);

 flags = GLOB_BRACE|GLOB_NOCHECK|GLOB_QUOTE|GLOB_TILDE;
 memset(&gl, 0, sizeof(gl));
 if (glob(*cpp, flags, ((void*)0), &gl) ||
     gl.gl_pathc == 0) {
  warnx("%s: not found", *cpp);
  globfree(&gl);
  return (0);
 }
 *cpp = strdup(gl.gl_pathv[0]);
 globfree(&gl);
 return (1);
}
