
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; int data; } ;
typedef int FILE ;


 int buffer_write (TYPE_1__*,char*,int) ;
 scalar_t__ data_prot ;
 int fileno (int *) ;
 TYPE_1__ out_buffer ;
 scalar_t__ prot_clear ;
 int putc (int,int *) ;
 int sec_write (int ,int ,int) ;

int
sec_putc(int c, FILE *F)
{
    char ch = c;
    if(data_prot == prot_clear)
 return putc(c, F);

    buffer_write(&out_buffer, &ch, 1);
    if(c == '\n' || out_buffer.index >= 1024 ) {
 sec_write(fileno(F), out_buffer.data, out_buffer.index);
 out_buffer.index = 0;
    }
    return c;
}
