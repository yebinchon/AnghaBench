
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer {int* data; scalar_t__ index; int size; } ;
typedef int len ;
struct TYPE_2__ {int (* decode ) (int ,int*,int,int ) ;} ;


 int app_data ;
 int block_read (int,int*,int) ;
 int data_prot ;
 TYPE_1__* mech ;
 int ntohl (int) ;
 void* realloc (int*,int) ;
 int stub1 (int ,int*,int,int ) ;

__attribute__((used)) static int
sec_get_data(int fd, struct buffer *buf, int level)
{
    int len;
    int b;
    void *tmp;

    b = block_read(fd, &len, sizeof(len));
    if (b == 0)
 return 0;
    else if (b < 0)
 return -1;
    len = ntohl(len);
    tmp = realloc(buf->data, len);
    if (tmp == ((void*)0))
 return -1;
    buf->data = tmp;
    b = block_read(fd, buf->data, len);
    if (b == 0)
 return 0;
    else if (b < 0)
 return -1;
    buf->size = (*mech->decode)(app_data, buf->data, len, data_prot);
    buf->index = 0;
    return 0;
}
