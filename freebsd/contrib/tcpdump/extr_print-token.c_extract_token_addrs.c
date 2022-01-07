
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct token_header {scalar_t__ token_shost; scalar_t__ token_dhost; } ;


 int memcpy (char*,char const*,int) ;

__attribute__((used)) static inline void
extract_token_addrs(const struct token_header *trp, char *fsrc, char *fdst)
{
 memcpy(fdst, (const char *)trp->token_dhost, 6);
 memcpy(fsrc, (const char *)trp->token_shost, 6);
}
