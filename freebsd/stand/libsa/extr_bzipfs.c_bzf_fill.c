
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int avail_in; int next_in; } ;
struct bz_file {int bzf_buf; TYPE_1__ bzf_bzstream; int bzf_rawfd; } ;


 int BZ_BUFSIZE ;
 int bcopy (int ,int,int) ;
 int read (int ,int,int) ;

__attribute__((used)) static int
bzf_fill(struct bz_file *bzf)
{
    int result;
    int req;

    req = BZ_BUFSIZE - bzf->bzf_bzstream.avail_in;
    result = 0;


    if (req > 0) {

 if (req < BZ_BUFSIZE)
     bcopy(bzf->bzf_buf + req, bzf->bzf_buf, BZ_BUFSIZE - req);


 result = read(bzf->bzf_rawfd, bzf->bzf_buf + bzf->bzf_bzstream.avail_in, req);
 bzf->bzf_bzstream.next_in = bzf->bzf_buf;
 if (result >= 0)
     bzf->bzf_bzstream.avail_in += result;
    }
    return(result);
}
