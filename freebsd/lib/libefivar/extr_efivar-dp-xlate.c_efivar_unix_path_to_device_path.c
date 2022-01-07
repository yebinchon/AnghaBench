
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmesh {int dummy; } ;
typedef int efidp ;


 int EDOOFUS ;
 int ENOMEM ;
 int dev_path_to_dp (struct gmesh*,char*,int *) ;
 int efipart_to_dp (struct gmesh*,char*,int *) ;
 int errno ;
 int free (char*) ;
 int geom_deletetree (struct gmesh*) ;
 scalar_t__ geom_gettree (struct gmesh*) ;
 int path_to_dp (struct gmesh*,char*,int *) ;
 scalar_t__ strchr (char*,char) ;
 char* strdup (char const*) ;

int
efivar_unix_path_to_device_path(const char *path, efidp *dp)
{
 char *modpath = ((void*)0), *cp;
 int rv = ENOMEM;
 struct gmesh mesh;




 if (path == ((void*)0) || dp == ((void*)0))
  return (EDOOFUS);







 if (geom_gettree(&mesh))
  return (errno);





 modpath = strdup(path);
 if (modpath == ((void*)0))
  goto out;
 for (cp = modpath; *cp; cp++)
  if (*cp == '\\')
   *cp = '/';

 if (modpath[0] == '/' && modpath[1] == '/')
  rv = efipart_to_dp(&mesh, modpath, dp);
 else if (strchr(modpath, ':'))
  rv = dev_path_to_dp(&mesh, modpath, dp);
 else
  rv = path_to_dp(&mesh, modpath, dp);

out:
 geom_deletetree(&mesh);
 free(modpath);

 return (rv);
}
