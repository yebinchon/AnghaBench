
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CHAR_EOS ;

__attribute__((used)) static void
g_Ctoc(const Char *str, char *buf)
{
 char *dc;

 for (dc = buf; (*dc++ = *str++) != CHAR_EOS;)
  continue;
}
