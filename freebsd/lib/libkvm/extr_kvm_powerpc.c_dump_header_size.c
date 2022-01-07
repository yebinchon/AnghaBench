
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kerneldumpheader {int architecture; int magic; } ;


 char* KERNELDUMPMAGIC ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static size_t
dump_header_size(struct kerneldumpheader *dh)
{

 if (strcmp(dh->magic, KERNELDUMPMAGIC) != 0)
  return (0);
 if (strcmp(dh->architecture, "powerpc") != 0)
  return (0);

 return (sizeof(*dh));
}
