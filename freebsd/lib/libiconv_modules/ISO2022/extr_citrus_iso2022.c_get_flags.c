
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ _ISO2022EncodingInfo ;
 int _MATCH ;
 int _NOTMATCH ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static __inline int
get_flags(_ISO2022EncodingInfo * __restrict ei,
    const char * __restrict token)
{
 static struct {
  const char *tag;
  int flag;
 } const tags[] = {
  { "DUMMY", 0 },
  { "8BIT", 142 },
  { "NOOLD", 134 },
  { "SI", 133 },
  { "SO", 132 },
  { "LS0", 141 },
  { "LS1", 140 },
  { "LS2", 138 },
  { "LS3", 136 },
  { "LS1R", 139 },
  { "LS2R", 137 },
  { "LS3R", 135 },
  { "SS2", 131 },
  { "SS3", 129 },
  { "SS2R", 130 },
  { "SS3R", 128 },
  { ((void*)0), 0 }
 };
 int i;

 for (i = 0; tags[i].tag; i++)
  if (!strcmp(token, tags[i].tag)) {
   ei->flags |= tags[i].flag;
   return (_MATCH);
  }

 return (_NOTMATCH);
}
