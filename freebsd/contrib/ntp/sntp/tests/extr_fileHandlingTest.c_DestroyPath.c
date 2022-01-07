
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void
DestroyPath(
 const char * pathname
 )
{

 union {
  const char *ccp;
  void *vp;
 } any;

 any.ccp = pathname;
 free(any.vp);
}
