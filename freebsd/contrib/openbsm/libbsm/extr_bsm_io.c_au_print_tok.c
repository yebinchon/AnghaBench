
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tokenstr_t ;
typedef int FILE ;


 int AU_OFLAG_NONE ;
 int AU_OFLAG_RAW ;
 int AU_OFLAG_SHORT ;
 int au_print_flags_tok (int *,int *,char*,int) ;

void
au_print_tok(FILE *outfp, tokenstr_t *tok, char *del, char raw, char sfrm)
{
 int oflags = AU_OFLAG_NONE;

 if (raw)
  oflags |= AU_OFLAG_RAW;
 if (sfrm)
  oflags |= AU_OFLAG_SHORT;

 au_print_flags_tok(outfp, tok, del, oflags);
}
