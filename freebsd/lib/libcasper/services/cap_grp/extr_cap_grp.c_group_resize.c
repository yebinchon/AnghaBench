
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int free (char*) ;
 char* gbuffer ;
 int gbufsize ;
 int memset (char*,int ,int) ;
 char* realloc (char*,int) ;

__attribute__((used)) static int
group_resize(void)
{
 char *buf;

 if (gbufsize == 0)
  gbufsize = 1024;
 else
  gbufsize *= 2;

 buf = gbuffer;
 gbuffer = realloc(buf, gbufsize);
 if (gbuffer == ((void*)0)) {
  free(buf);
  gbufsize = 0;
  return (ENOMEM);
 }
 memset(gbuffer, 0, gbufsize);

 return (0);
}
