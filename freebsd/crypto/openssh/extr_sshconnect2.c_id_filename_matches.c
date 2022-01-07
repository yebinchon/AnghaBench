
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* filename; } ;
typedef TYPE_1__ Identity ;


 scalar_t__ memcmp (char const*,char const*,size_t) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
id_filename_matches(Identity *id, Identity *private_id)
{
 const char *suffixes[] = { ".pub", "-cert.pub", ((void*)0) };
 size_t len = strlen(id->filename), plen = strlen(private_id->filename);
 size_t i, slen;

 if (strcmp(id->filename, private_id->filename) == 0)
  return 1;
 for (i = 0; suffixes[i]; i++) {
  slen = strlen(suffixes[i]);
  if (len > slen && plen == len - slen &&
      strcmp(id->filename + (len - slen), suffixes[i]) == 0 &&
      memcmp(id->filename, private_id->filename, plen) == 0)
   return 1;
 }
 return 0;
}
