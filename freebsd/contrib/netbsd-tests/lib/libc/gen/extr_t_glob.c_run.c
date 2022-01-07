
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t gl_pathc; int * gl_pathv; int gl_lstat; int gl_stat; int gl_closedir; int gl_readdir; int gl_opendir; } ;
typedef TYPE_1__ glob_t ;
typedef int gl ;


 int ATF_CHECK (int) ;
 int ATF_CHECK_STREQ (int ,char const*) ;
 int DPRINTF (char*) ;
 int GLOB_ALTDIRFUNC ;
 int RZ (int ) ;
 int gl_closedir ;
 int gl_lstat ;
 int gl_opendir ;
 int gl_readdir ;
 int gl_stat ;
 int glob (char const*,int,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
run(const char *p, int flags, const char **res, size_t len)
{
 glob_t gl;
 size_t i;

 memset(&gl, 0, sizeof(gl));
 gl.gl_opendir = gl_opendir;
 gl.gl_readdir = gl_readdir;
 gl.gl_closedir = gl_closedir;
 gl.gl_stat = gl_stat;
 gl.gl_lstat = gl_lstat;

 RZ(glob(p, GLOB_ALTDIRFUNC | flags, ((void*)0), &gl));

 for (i = 0; i < gl.gl_pathc; i++)
  DPRINTF(("%s\n", gl.gl_pathv[i]));

 ATF_CHECK(len == gl.gl_pathc);
 for (i = 0; i < gl.gl_pathc; i++)
  ATF_CHECK_STREQ(gl.gl_pathv[i], res[i]);

 globfree(&gl);
}
