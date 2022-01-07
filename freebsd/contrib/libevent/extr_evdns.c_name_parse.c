
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GET8 (int) ;
 int memcpy (char*,int*,int) ;

__attribute__((used)) static int
name_parse(u8 *packet, int length, int *idx, char *name_out, int name_out_len) {
 int name_end = -1;
 int j = *idx;
 int ptr_count = 0;




 char *cp = name_out;
 const char *const end = name_out + name_out_len;







 for (;;) {
  u8 label_len;
  do { if (j >= length) goto err; label_len = packet[j++]; } while (0);
  if (!label_len) break;
  if (label_len & 0xc0) {
   u8 ptr_low;
   do { if (j >= length) goto err; ptr_low = packet[j++]; } while (0);
   if (name_end < 0) name_end = j;
   j = (((int)label_len & 0x3f) << 8) + ptr_low;

   if (j < 0 || j >= length) return -1;


   if (++ptr_count > length) return -1;
   continue;
  }
  if (label_len > 63) return -1;
  if (cp != name_out) {
   if (cp + 1 >= end) return -1;
   *cp++ = '.';
  }
  if (cp + label_len >= end) return -1;
  if (j + label_len > length) return -1;
  memcpy(cp, packet + j, label_len);
  cp += label_len;
  j += label_len;
 }
 if (cp >= end) return -1;
 *cp = '\0';
 if (name_end < 0)
  *idx = j;
 else
  *idx = name_end;
 return 0;
 err:
 return -1;
}
