
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso9660 {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ int32_t ;


 size_t DR_length_offset ;
 size_t PVD_file_structure_version_offset ;
 int PVD_logical_block_size_offset ;
 size_t PVD_reserved1_offset ;
 int PVD_reserved2_offset ;
 int PVD_reserved2_size ;
 int PVD_reserved3_offset ;
 int PVD_reserved3_size ;
 int PVD_reserved4_offset ;
 int PVD_reserved4_size ;
 int PVD_reserved5_offset ;
 int PVD_reserved5_size ;
 int PVD_root_directory_record_offset ;
 int PVD_type_1_path_table_offset ;
 int PVD_type_m_path_table_offset ;
 size_t PVD_type_offset ;
 size_t PVD_version_offset ;
 int PVD_volume_space_size_offset ;
 scalar_t__ SYSTEM_AREA_BLOCK ;
 scalar_t__ archive_be32dec (unsigned char const*) ;
 scalar_t__ archive_le16dec (unsigned char const*) ;
 scalar_t__ archive_le32dec (unsigned char const*) ;
 int isNull (struct iso9660*,unsigned char const*,int ,int ) ;

__attribute__((used)) static int
isEVD(struct iso9660 *iso9660, const unsigned char *h)
{
 const unsigned char *p;
 ssize_t logical_block_size;
 int32_t volume_block;
 int32_t location;

 (void)iso9660;


 if (h[PVD_type_offset] != 2)
  return (0);


 if (h[PVD_version_offset] != 2)
  return (0);


 if (h[PVD_reserved1_offset] != 0)
  return (0);


 if (!isNull(iso9660, h, PVD_reserved2_offset, PVD_reserved2_size))
  return (0);


 if (!isNull(iso9660, h, PVD_reserved3_offset, PVD_reserved3_size))
  return (0);




 logical_block_size =
     archive_le16dec(h + PVD_logical_block_size_offset);
 if (logical_block_size <= 0)
  return (0);

 volume_block =
     archive_le32dec(h + PVD_volume_space_size_offset);
 if (volume_block <= SYSTEM_AREA_BLOCK+4)
  return (0);


 if (h[PVD_file_structure_version_offset] != 2)
  return (0);




 location = archive_le32dec(h+PVD_type_1_path_table_offset);
 if (location < SYSTEM_AREA_BLOCK+2 || location >= volume_block)
  return (0);




 location = archive_be32dec(h+PVD_type_m_path_table_offset);
 if ((location > 0 && location < SYSTEM_AREA_BLOCK+2)
     || location >= volume_block)
  return (0);


 if (!isNull(iso9660, h, PVD_reserved4_offset, PVD_reserved4_size))
  return (0);


 if (!isNull(iso9660, h, PVD_reserved5_offset, PVD_reserved5_size))
  return (0);


 p = h + PVD_root_directory_record_offset;
 if (p[DR_length_offset] != 34)
  return (0);

 return (48);
}
