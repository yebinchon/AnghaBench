
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct api_signature {scalar_t__ checksum; } ;


 scalar_t__ crc32 (void*,int) ;

__attribute__((used)) static int
valid_sig(struct api_signature *sig)
{
 uint32_t checksum;
 struct api_signature s;

 if (sig == ((void*)0))
  return (0);





 s = *sig;
 s.checksum = 0;

 checksum = crc32((void *)&s, sizeof(struct api_signature));

 if (checksum != sig->checksum)
  return (0);

 return (1);
}
