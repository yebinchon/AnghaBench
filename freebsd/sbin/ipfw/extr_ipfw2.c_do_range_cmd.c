
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int rh ;
struct TYPE_9__ {int new_set; } ;
typedef TYPE_2__ ipfw_range_tlv ;
struct TYPE_8__ {int length; int type; } ;
struct TYPE_11__ {int new_set; TYPE_1__ head; } ;
struct TYPE_10__ {TYPE_5__ range; int opheader; } ;
typedef TYPE_3__ ipfw_range_header ;


 int IPFW_TLV_RANGE ;
 scalar_t__ do_get3 (int,int *,size_t*) ;
 int memcpy (TYPE_5__*,TYPE_2__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int
do_range_cmd(int cmd, ipfw_range_tlv *rt)
{
 ipfw_range_header rh;
 size_t sz;

 memset(&rh, 0, sizeof(rh));
 memcpy(&rh.range, rt, sizeof(*rt));
 rh.range.head.length = sizeof(*rt);
 rh.range.head.type = IPFW_TLV_RANGE;
 sz = sizeof(rh);

 if (do_get3(cmd, &rh.opheader, &sz) != 0)
  return (-1);

 rt->new_set = rh.range.new_set;
 return (0);
}
