
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_bitname {int bn_bit; char* bn_name; } ;


 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

char *
smb_printb(char *dest, int flags, const struct smb_bitname *bnp) {
 int first = 1;

 strcpy(dest, "<");
 for(; bnp->bn_bit; bnp++) {
  if (flags & bnp->bn_bit) {
   strcat(dest, bnp->bn_name);
   first = 0;
  }
  if (!first && (flags & bnp[1].bn_bit))
   strcat(dest, "|");
 }
 strcat(dest, ">");
 return dest;
}
