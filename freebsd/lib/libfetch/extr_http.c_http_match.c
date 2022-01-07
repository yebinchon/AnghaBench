
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ tolower (unsigned char) ;

__attribute__((used)) static const char *
http_match(const char *str, const char *hdr)
{
 while (*str && *hdr &&
     tolower((unsigned char)*str++) == tolower((unsigned char)*hdr++))
               ;
 if (*str || *hdr != ':')
  return (((void*)0));
 while (*hdr && isspace((unsigned char)*++hdr))
               ;
 return (hdr);
}
