
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char getDebugChar () ;
 char* hexchars ;
 int putDebugChar (char) ;

__attribute__((used)) static void
putpacket (unsigned char *buffer)
{
  unsigned char checksum;
  int count;
  unsigned char ch;


  do
    {
      putDebugChar('$');
      checksum = 0;
      count = 0;

      while (ch = buffer[count])
 {
   putDebugChar(ch);
   checksum += ch;
   count += 1;
 }

      putDebugChar('#');
      putDebugChar(hexchars[checksum >> 4]);
      putDebugChar(hexchars[checksum & 0xf]);

    }
  while (getDebugChar() != '+');
}
