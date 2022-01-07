
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int arc_space_type_t ;
 int ARC_SPACE_NUMTYPES ;
 int ASSERT (int) ;
 int aggsum_add (int *,int ) ;
 int arc_meta_used ;
 int arc_size ;
 int astat_bonus_size ;
 int astat_data_size ;
 int astat_dbuf_size ;
 int astat_dnode_size ;
 int astat_hdr_size ;
 int astat_l2_hdr_size ;
 int astat_metadata_size ;

void
arc_space_consume(uint64_t space, arc_space_type_t type)
{
 ASSERT(type >= 0 && type < ARC_SPACE_NUMTYPES);

 switch (type) {
 case 133:
  aggsum_add(&astat_data_size, space);
  break;
 case 128:
  aggsum_add(&astat_metadata_size, space);
  break;
 case 134:
  aggsum_add(&astat_bonus_size, space);
  break;
 case 131:
  aggsum_add(&astat_dnode_size, space);
  break;
 case 132:
  aggsum_add(&astat_dbuf_size, space);
  break;
 case 130:
  aggsum_add(&astat_hdr_size, space);
  break;
 case 129:
  aggsum_add(&astat_l2_hdr_size, space);
  break;
 }

 if (type != 133)
  aggsum_add(&arc_meta_used, space);

 aggsum_add(&arc_size, space);
}
