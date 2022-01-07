
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * b_buf; } ;
struct TYPE_5__ {TYPE_1__ b_un; } ;


 int flush (int ,TYPE_2__*) ;
 int free (char*) ;
 int fswritefd ;
 TYPE_2__ inobuf ;

void
freeinodebuf(void)
{




 flush(fswritefd, &inobuf);
 if (inobuf.b_un.b_buf != ((void*)0))
  free((char *)inobuf.b_un.b_buf);
 inobuf.b_un.b_buf = ((void*)0);
}
