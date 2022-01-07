
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ index; int data; } ;
typedef int FILE ;


 scalar_t__ data_prot ;
 int fflush (int *) ;
 int fileno (int *) ;
 TYPE_1__ out_buffer ;
 scalar_t__ prot_clear ;
 int sec_send (int ,int *,int ) ;
 int sec_write (int ,int ,scalar_t__) ;

int
sec_fflush(FILE *F)
{
    if(data_prot != prot_clear) {
 if(out_buffer.index > 0){
     sec_write(fileno(F), out_buffer.data, out_buffer.index);
     out_buffer.index = 0;
 }
 sec_send(fileno(F), ((void*)0), 0);
    }
    fflush(F);
    return 0;
}
