
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 char* find_value (int ,int) ;
 int rev_compl ;
 int snprintf (char*,size_t,char*,char const*) ;

__attribute__((used)) static void
convert_sff_rev_compliance(char *buf, size_t size, uint8_t value)
{
 const char *x;

 if (value > 0x07)
  x = "Unallocated";
 else
  x = find_value(rev_compl, value);

 snprintf(buf, size, "%s", x);
}
