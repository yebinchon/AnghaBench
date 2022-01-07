
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct iter_forwards {int dummy; } ;
struct TYPE_2__ {struct iter_forward_zone* key; } ;
struct iter_forward_zone {int namelabs; int namelen; int * name; int dclass; TYPE_1__ node; } ;


 int dname_count_size_labels (int *,int *) ;
 int forwards_insert_data (struct iter_forwards*,int ,int *,int ,int ,int *) ;

__attribute__((used)) static int
fwd_add_stub_hole(struct iter_forwards* fwd, uint16_t c, uint8_t* nm)
{
 struct iter_forward_zone key;
 key.node.key = &key;
 key.dclass = c;
 key.name = nm;
 key.namelabs = dname_count_size_labels(key.name, &key.namelen);
 return forwards_insert_data(fwd, key.dclass, key.name,
  key.namelen, key.namelabs, ((void*)0));
}
