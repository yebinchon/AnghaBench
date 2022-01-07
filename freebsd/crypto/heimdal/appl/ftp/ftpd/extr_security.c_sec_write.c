
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* overhead ) (int ,scalar_t__,int) ;} ;


 int app_data ;
 int buffer_size ;
 scalar_t__ data_prot ;
 TYPE_1__* mech ;
 scalar_t__ prot_clear ;
 int sec_send (int,char*,int) ;
 scalar_t__ stub1 (int ,scalar_t__,int) ;
 int write (int,char*,int) ;

int
sec_write(int fd, char *dataptr, int length)
{
    int len = buffer_size;
    int tx = 0;

    if(data_prot == prot_clear)
 return write(fd, dataptr, length);

    len -= (*mech->overhead)(app_data, data_prot, len);
    while(length){
 if(length < len)
     len = length;
 sec_send(fd, dataptr, len);
 length -= len;
 dataptr += len;
 tx += len;
    }
    return tx;
}
