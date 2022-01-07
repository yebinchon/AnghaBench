
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_buf_hdr_t ;


 int ARC_SPACE_L2HDRS ;
 int HDR_L2ONLY_SIZE ;
 int arc_space_consume (int ,int ) ;
 int bzero (int *,int ) ;

__attribute__((used)) static int
hdr_l2only_cons(void *vbuf, void *unused, int kmflag)
{
 arc_buf_hdr_t *hdr = vbuf;

 bzero(hdr, HDR_L2ONLY_SIZE);
 arc_space_consume(HDR_L2ONLY_SIZE, ARC_SPACE_L2HDRS);

 return (0);
}
