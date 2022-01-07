
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso9660 {int dummy; } ;



__attribute__((used)) static int
isBootRecord(struct iso9660 *iso9660, const unsigned char *h)
{
 (void)iso9660;


 if (h[0] != 0)
  return (0);


 if (h[6] != 1)
  return (0);

 return (1);
}
