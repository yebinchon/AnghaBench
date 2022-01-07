
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int avail_in; int next_in; } ;
struct z_file {int zf_buf; TYPE_1__ zf_zstream; int zf_rawfd; } ;


 int Z_BUFSIZE ;
 int bcopy (int ,int,int) ;
 int read (int ,int,int) ;

__attribute__((used)) static int
zf_fill(struct z_file *zf)
{
    int result;
    int req;

    req = Z_BUFSIZE - zf->zf_zstream.avail_in;
    result = 0;


    if (req > 0) {

 if (req < Z_BUFSIZE)
     bcopy(zf->zf_buf + req, zf->zf_buf, Z_BUFSIZE - req);


 result = read(zf->zf_rawfd, zf->zf_buf + zf->zf_zstream.avail_in, req);
 zf->zf_zstream.next_in = zf->zf_buf;
 if (result >= 0)
     zf->zf_zstream.avail_in += result;
    }
    return(result);
}
