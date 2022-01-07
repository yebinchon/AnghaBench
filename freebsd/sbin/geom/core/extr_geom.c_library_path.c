
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* GEOM_CLASS_DIR ;
 char* getenv (char*) ;

__attribute__((used)) static const char *
library_path(void)
{
 const char *path;

 path = getenv("GEOM_LIBRARY_PATH");
 if (path == ((void*)0))
  path = GEOM_CLASS_DIR;
 return (path);
}
