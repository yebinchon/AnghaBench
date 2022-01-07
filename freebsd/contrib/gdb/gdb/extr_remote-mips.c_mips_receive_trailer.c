
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_TIMEOUT ;
 int TRLR_CHECK (int) ;
 int TRLR_LENGTH ;
 int mips_readchar (int) ;

__attribute__((used)) static int
mips_receive_trailer (unsigned char *trlr, int *pgarbage, int *pch, int timeout)
{
  int i;
  int ch;

  for (i = 0; i < TRLR_LENGTH; i++)
    {
      ch = mips_readchar (timeout);
      *pch = ch;
      if (ch == SERIAL_TIMEOUT)
 return -1;
      if (!TRLR_CHECK (ch))
 return -2;
      trlr[i] = ch;
    }
  return 0;
}
