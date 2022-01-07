
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_2__ {int name; scalar_t__ ino; } ;


 TYPE_1__ curfile ;
 char* extbuf ;
 int extbufsize ;
 scalar_t__ extloc ;
 int fprintf (int ,char*,int,char*,int ,int ) ;
 int free (char*) ;
 char* malloc (int) ;
 int stderr ;

__attribute__((used)) static char *
setupextattr(int extsize)
{

 extloc = 0;
 if (extsize <= extbufsize)
  return (extbuf);
 if (extbufsize > 0)
  free(extbuf);
 if ((extbuf = malloc(extsize)) != ((void*)0)) {
  extbufsize = extsize;
  return (extbuf);
 }
 extbufsize = 0;
 extbuf = ((void*)0);
 fprintf(stderr, "Cannot extract %d bytes %s for inode %ju, name %s\n",
     extsize, "of extended attributes", (uintmax_t)curfile.ino,
     curfile.name);
 return (((void*)0));
}
