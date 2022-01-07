
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SHA_Defn {int version; TYPE_1__* axf; } ;
typedef enum sha_version { ____Placeholder_sha_version } sha_version ;
struct TYPE_2__ {scalar_t__ hashsize; } ;


 scalar_t__ LSB_ENTRY_SIZE ;





 struct SHA_Defn* SHA_definitions ;
 int XXX ;
 int byteswap256 (void*) ;
 int memcpy (char*,char*,scalar_t__) ;
 size_t nitems (struct SHA_Defn*) ;
 int panic (char*,unsigned int) ;

__attribute__((used)) static void
ccp_sha_copy_result(char *output, char *buffer, enum sha_version version)
{
 const struct SHA_Defn *defn;
 size_t i;

 for (i = 0; i < nitems(SHA_definitions); i++)
  if (SHA_definitions[i].version == version)
   break;
 if (i == nitems(SHA_definitions))
  panic("bogus sha version auth_mode %u\n", (unsigned)version);

 defn = &SHA_definitions[i];


 byteswap256((void *)buffer);
 if (defn->axf->hashsize > LSB_ENTRY_SIZE)
  byteswap256((void *)(buffer + LSB_ENTRY_SIZE));

 switch (defn->version) {
 case 132:
  memcpy(output, buffer + 12, defn->axf->hashsize);
  break;





 case 130:
  memcpy(output, buffer, defn->axf->hashsize);
  break;
 case 129:
  memcpy(output,
      buffer + LSB_ENTRY_SIZE * 3 - defn->axf->hashsize,
      defn->axf->hashsize - LSB_ENTRY_SIZE);
  memcpy(output + defn->axf->hashsize - LSB_ENTRY_SIZE, buffer,
      LSB_ENTRY_SIZE);
  break;
 case 128:
  memcpy(output, buffer + LSB_ENTRY_SIZE, LSB_ENTRY_SIZE);
  memcpy(output + LSB_ENTRY_SIZE, buffer, LSB_ENTRY_SIZE);
  break;
 }
}
