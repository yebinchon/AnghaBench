
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

int
acl_free(void *obj_p)
{

 if (obj_p) {
  free(obj_p);
  obj_p = ((void*)0);
 }

 return (0);
}
