
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_buf_hdr_t ;


 int ARC_SPACE_L2HDRS ;
 int ASSERT (int ) ;
 int HDR_EMPTY (int *) ;
 int HDR_L2ONLY_SIZE ;
 int arc_space_return (int ,int ) ;

__attribute__((used)) static void
hdr_l2only_dest(void *vbuf, void *unused)
{
 arc_buf_hdr_t *hdr = vbuf;

 ASSERT(HDR_EMPTY(hdr));
 arc_space_return(HDR_L2ONLY_SIZE, ARC_SPACE_L2HDRS);
}
