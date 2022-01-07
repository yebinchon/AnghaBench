
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shlib_list {char* name; scalar_t__ major; int ndewey; int minor; char* path; struct shlib_list* next; int dewey; } ;


 int bcopy (int*,int ,int) ;
 scalar_t__ cmpndewey (int*,int,int ,int) ;
 void* concat (char*,char*,char*) ;
 int free (char*) ;
 scalar_t__ major ;
 int printf (char*,char*,char*,...) ;
 struct shlib_list* shlib_head ;
 struct shlib_list** shlib_tail ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;
 scalar_t__ verbose ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
enter(char *dir, char *file, char *name, int dewey[], int ndewey)
{
 struct shlib_list *shp;

 for (shp = shlib_head; shp; shp = shp->next) {
  if (strcmp(name, shp->name) != 0 || major != shp->major)
   continue;


  if (cmpndewey(dewey, ndewey, shp->dewey, shp->ndewey) > 0) {


   if (verbose)
    printf("Updating lib%s.%d.%d to %s/%s\n",
     shp->name, shp->major, shp->minor,
     dir, file);

   free(shp->name);
   shp->name = strdup(name);
   free(shp->path);
   shp->path = concat(dir, "/", file);
   bcopy(dewey, shp->dewey, sizeof(shp->dewey));
   shp->ndewey = ndewey;
  }
  break;
 }

 if (shp)

  return;


 if (verbose)
  printf("Adding %s/%s\n", dir, file);

 shp = (struct shlib_list *)xmalloc(sizeof *shp);
 shp->name = strdup(name);
 shp->path = concat(dir, "/", file);
 bcopy(dewey, shp->dewey, sizeof(shp->dewey));
 shp->ndewey = ndewey;
 shp->next = ((void*)0);

 *shlib_tail = shp;
 shlib_tail = &shp->next;
}
