
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ch ;


 int * buffer ;
 int teken ;
 int teken_input (int *,unsigned char*,int) ;
 int vidc_biosputchar (int) ;

__attribute__((used)) static void
vidc_putchar(int c)
{
 unsigned char ch = c;

 if (buffer != ((void*)0))
  teken_input(&teken, &ch, sizeof (ch));
 else
  vidc_biosputchar(c);
}
