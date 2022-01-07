
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_id {int bustype; int vendor; int product; int version; } ;


 int printf (char*,int,int,int,int) ;
 int warnx (char*,size_t,int) ;

__attribute__((used)) static int
S_input_id(size_t l2, void *p)
{
 struct input_id *id = p;

 if (l2 != sizeof(*id)) {
  warnx("S_input_id %zu != %zu", l2, sizeof(*id));
  return (1);
 }

 printf("{ bustype = 0x%04x, vendor = 0x%04x, "
     "product = 0x%04x, version = 0x%04x }",
     id->bustype, id->vendor, id->product, id->version);
 return (0);
}
