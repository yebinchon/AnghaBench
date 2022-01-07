
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct vdd {int vdd_type; int rootent; int location_type_M_path_table; int location_type_L_path_table; int path_table_size; } ;
struct TYPE_2__ {char* s; } ;
struct iso9660 {int volume_sequence_number; int birth_time; int bibliographic_file_identifier; int abstract_file_identifier; int copyright_file_identifier; int application_identifier; int data_preparer_identifier; int publisher_identifier; int volume_space_size; TYPE_1__ volume_identifier; } ;
struct archive_write {struct iso9660* format_data; } ;
typedef int identifier ;
typedef enum vdc { ____Placeholder_vdc } vdc ;
typedef enum VD_type { ____Placeholder_VD_type } VD_type ;


 int ARCHIVE_OK ;
 int A_CHAR ;
 int DIR_REC_VD ;
 int D_CHAR ;
 int LOGICAL_BLOCK_SIZE ;
 int VDC_LOWERCASE ;
 int VDC_STD ;
 int VDC_UCS2 ;



 int VDT_PRIMARY ;
 int VDT_SUPPLEMENTARY ;
 int get_system_identitier (char*,int) ;
 int memset (unsigned char*,int,int) ;
 int set_VD_bp (unsigned char*,int,unsigned char) ;
 int set_date_time (unsigned char*,int ) ;
 int set_date_time_null (unsigned char*) ;
 int set_directory_record (unsigned char*,int,int ,struct iso9660*,int ,int const) ;
 int set_file_identifier (unsigned char*,int,int,int,struct archive_write*,struct vdd*,int *,char*,int,int ) ;
 int set_num_723 (unsigned char*,int) ;
 int set_num_731 (unsigned char*,int ) ;
 int set_num_732 (unsigned char*,int ) ;
 int set_num_733 (unsigned char*,int ) ;
 int set_str_a_characters_bp (struct archive_write*,unsigned char*,int,int,char*,int) ;
 int set_str_d_characters_bp (struct archive_write*,unsigned char*,int,int,char*,int) ;
 int set_unused_field_bp (unsigned char*,int,int) ;
 unsigned char* wb_buffptr (struct archive_write*) ;
 int wb_consume (struct archive_write*,int) ;

__attribute__((used)) static int
write_VD(struct archive_write *a, struct vdd *vdd)
{
 struct iso9660 *iso9660;
 unsigned char *bp;
 uint16_t volume_set_size = 1;
 char identifier[256];
 enum VD_type vdt;
 enum vdc vdc;
 unsigned char vd_ver, fst_ver;
 int r;

 iso9660 = a->format_data;
 switch (vdd->vdd_type) {
 case 129:
  vdt = VDT_SUPPLEMENTARY;
  vd_ver = fst_ver = 1;
  vdc = VDC_UCS2;
  break;
 case 130:
  vdt = VDT_SUPPLEMENTARY;
  vd_ver = fst_ver = 2;
  vdc = VDC_LOWERCASE;
  break;
 case 128:
 default:
  vdt = VDT_PRIMARY;
  vd_ver = fst_ver = 1;



  vdc = VDC_STD;

  break;
 }

 bp = wb_buffptr(a) -1;

 set_VD_bp(bp, vdt, vd_ver);

 set_unused_field_bp(bp, 8, 8);

 get_system_identitier(identifier, sizeof(identifier));
 r = set_str_a_characters_bp(a, bp, 9, 40, identifier, vdc);
 if (r != ARCHIVE_OK)
  return (r);

 r = set_str_d_characters_bp(a, bp, 41, 72,
     iso9660->volume_identifier.s, vdc);
 if (r != ARCHIVE_OK)
  return (r);

 set_unused_field_bp(bp, 73, 80);

 set_num_733(bp+81, iso9660->volume_space_size);
 if (vdd->vdd_type == 129) {

  bp[89] = 0x25;
  bp[90] = 0x2F;
  bp[91] = 0x45;
  memset(bp + 92, 0, 120 - 92 + 1);
 } else {

  set_unused_field_bp(bp, 89, 120);
 }

 set_num_723(bp+121, volume_set_size);

 set_num_723(bp+125, iso9660->volume_sequence_number);

 set_num_723(bp+129, LOGICAL_BLOCK_SIZE);

 set_num_733(bp+133, vdd->path_table_size);

 set_num_731(bp+141, vdd->location_type_L_path_table);

 set_num_731(bp+145, 0);

 set_num_732(bp+149, vdd->location_type_M_path_table);

 set_num_732(bp+153, 0);

 set_directory_record(bp+157, 190-157+1, vdd->rootent,
     iso9660, DIR_REC_VD, vdd->vdd_type);

 r = set_str_d_characters_bp(a, bp, 191, 318, "", vdc);
 if (r != ARCHIVE_OK)
  return (r);

 r = set_file_identifier(bp, 319, 446, vdc, a, vdd,
     &(iso9660->publisher_identifier),
     "Publisher File", 1, A_CHAR);
 if (r != ARCHIVE_OK)
  return (r);

 r = set_file_identifier(bp, 447, 574, vdc, a, vdd,
     &(iso9660->data_preparer_identifier),
     "Data Preparer File", 1, A_CHAR);
 if (r != ARCHIVE_OK)
  return (r);

 r = set_file_identifier(bp, 575, 702, vdc, a, vdd,
     &(iso9660->application_identifier),
     "Application File", 1, A_CHAR);
 if (r != ARCHIVE_OK)
  return (r);

 r = set_file_identifier(bp, 703, 739, vdc, a, vdd,
     &(iso9660->copyright_file_identifier),
     "Copyright File", 0, D_CHAR);
 if (r != ARCHIVE_OK)
  return (r);

 r = set_file_identifier(bp, 740, 776, vdc, a, vdd,
     &(iso9660->abstract_file_identifier),
     "Abstract File", 0, D_CHAR);
 if (r != ARCHIVE_OK)
  return (r);

 r = set_file_identifier(bp, 777, 813, vdc, a, vdd,
     &(iso9660->bibliographic_file_identifier),
     "Bibliongraphic File", 0, D_CHAR);
 if (r != ARCHIVE_OK)
  return (r);

 set_date_time(bp+814, iso9660->birth_time);

 set_date_time(bp+831, iso9660->birth_time);

 set_date_time_null(bp+848);

 set_date_time(bp+865, iso9660->birth_time);

 bp[882] = fst_ver;

 bp[883] = 0;

 memset(bp + 884, 0x20, 1395 - 884 + 1);

 set_unused_field_bp(bp, 1396, LOGICAL_BLOCK_SIZE);

 return (wb_consume(a, LOGICAL_BLOCK_SIZE));
}
