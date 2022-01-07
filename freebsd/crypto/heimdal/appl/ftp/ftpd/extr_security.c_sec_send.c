
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bytes ;
struct TYPE_2__ {int (* encode ) (int ,char*,int,int ,void**) ;} ;


 int app_data ;
 int block_write (int,void*,int) ;
 int data_prot ;
 int free (void*) ;
 int htonl (int) ;
 TYPE_1__* mech ;
 int ntohl (int) ;
 int stub1 (int ,char*,int,int ,void**) ;

__attribute__((used)) static int
sec_send(int fd, char *from, int length)
{
    int bytes;
    void *buf;
    bytes = (*mech->encode)(app_data, from, length, data_prot, &buf);
    bytes = htonl(bytes);
    block_write(fd, &bytes, sizeof(bytes));
    block_write(fd, buf, ntohl(bytes));
    free(buf);
    return length;
}
