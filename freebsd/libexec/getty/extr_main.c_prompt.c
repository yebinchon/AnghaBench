
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CO ;
 int LM ;
 int putchr (char) ;
 int putf (int ) ;

__attribute__((used)) static void
prompt(void)
{

 putf(LM);
 if (CO)
  putchr('\n');
}
