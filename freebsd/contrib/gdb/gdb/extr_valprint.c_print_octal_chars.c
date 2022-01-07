
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 scalar_t__ BFD_ENDIAN_BIG ;
 unsigned int BITS_IN_BYTES ;
 unsigned int BITS_IN_OCTAL ;
 unsigned char CARRY_ONE ;
 unsigned char CARRY_ZERO ;
 unsigned char HIGH_ONE ;
 unsigned char HIGH_TWO ;
 unsigned char HIGH_ZERO ;
 unsigned char LOW_ONE ;
 unsigned char LOW_TWO ;
 unsigned char LOW_ZERO ;
 unsigned char MID_ONE ;
 unsigned char MID_TWO ;
 scalar_t__ TARGET_BYTE_ORDER ;
 int error (char*) ;
 int fprintf_filtered (struct ui_file*,char*,unsigned char) ;
 int fputs_filtered (int ,struct ui_file*) ;
 int local_octal_format_prefix () ;
 int local_octal_format_suffix () ;

void
print_octal_chars (struct ui_file *stream, unsigned char *valaddr, unsigned len)
{
  unsigned char *p;
  unsigned char octa1, octa2, octa3, carry;
  int cycle;
  cycle = (len * BITS_IN_BYTES) % 3;
  carry = 0;

  fputs_filtered (local_octal_format_prefix (), stream);
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    {
      for (p = valaddr;
    p < valaddr + len;
    p++)
 {
   switch (cycle)
     {
     case 0:


       octa1 = (0340 & *p) >> 5;
       octa2 = (0016 & *p) >> 2;
       carry = (0003 & *p);
       fprintf_filtered (stream, "%o", octa1);
       fprintf_filtered (stream, "%o", octa2);
       break;

     case 1:


       octa1 = (carry << 1) | ((0200 & *p) >> 7);
       octa2 = (0160 & *p) >> 4;
       octa3 = (0016 & *p) >> 1;
       carry = (0001 & *p);
       fprintf_filtered (stream, "%o", octa1);
       fprintf_filtered (stream, "%o", octa2);
       fprintf_filtered (stream, "%o", octa3);
       break;

     case 2:


       octa1 = (carry << 2) | ((0300 & *p) >> 6);
       octa2 = (0070 & *p) >> 3;
       octa3 = (0007 & *p);
       carry = 0;
       fprintf_filtered (stream, "%o", octa1);
       fprintf_filtered (stream, "%o", octa2);
       fprintf_filtered (stream, "%o", octa3);
       break;

     default:
       error ("Internal error in octal conversion;");
     }

   cycle++;
   cycle = cycle % 3;
 }
    }
  else
    {
      for (p = valaddr + len - 1;
    p >= valaddr;
    p--)
 {
   switch (cycle)
     {
     case 0:

       octa1 = (0340 & *p) >> 5;
       octa2 = (0016 & *p) >> 2;
       carry = (0003 & *p);
       fprintf_filtered (stream, "%o", octa1);
       fprintf_filtered (stream, "%o", octa2);
       break;

     case 1:

       octa1 = (carry << 1) | ((0200 & *p) >> 7);
       octa2 = (0160 & *p) >> 4;
       octa3 = (0016 & *p) >> 1;
       carry = (0001 & *p);
       fprintf_filtered (stream, "%o", octa1);
       fprintf_filtered (stream, "%o", octa2);
       fprintf_filtered (stream, "%o", octa3);
       break;

     case 2:

       octa1 = (carry << 2) | ((0300 & *p) >> 6);
       octa2 = (0070 & *p) >> 3;
       octa3 = (0007 & *p);
       carry = 0;
       fprintf_filtered (stream, "%o", octa1);
       fprintf_filtered (stream, "%o", octa2);
       fprintf_filtered (stream, "%o", octa3);
       break;

     default:
       error ("Internal error in octal conversion;");
     }

   cycle++;
   cycle = cycle % 3;
 }
    }

  fputs_filtered (local_octal_format_suffix (), stream);
}
