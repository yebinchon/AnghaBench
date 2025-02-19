
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_long ;
typedef int u_int64_t ;
struct dos_partition {int dp_size; int dp_typ; int dp_shd; int dp_ehd; int dp_esect; int dp_ecyl; int dp_ssect; int dp_scyl; int dp_flag; scalar_t__ dp_start; } ;


 int ACTIVE ;
 int DPCYL (int ,int ) ;
 int DPSECT (int ) ;
 int bcmp (struct dos_partition const*,int *,int) ;
 char* get_type (int) ;
 int mtpart ;
 int printf (char*,...) ;
 int secsize ;

__attribute__((used)) static void
print_part(const struct dos_partition *partp)
{
 u_int64_t part_mb;

 if (!bcmp(partp, &mtpart, sizeof (struct dos_partition))) {
  printf("<UNUSED>\n");
  return;
 }



 part_mb = partp->dp_size;
 part_mb *= secsize;
 part_mb /= (1024 * 1024);
 printf("sysid %d (%#04x),(%s)\n", partp->dp_typ, partp->dp_typ,
     get_type(partp->dp_typ));
 printf("    start %lu, size %lu (%ju Meg), flag %x%s\n",
  (u_long)partp->dp_start,
  (u_long)partp->dp_size,
  (uintmax_t)part_mb,
  partp->dp_flag,
  partp->dp_flag == ACTIVE ? " (active)" : "");
 printf("\tbeg: cyl %d/ head %d/ sector %d;\n\tend: cyl %d/ head %d/ sector %d\n"
  ,DPCYL(partp->dp_scyl, partp->dp_ssect)
  ,partp->dp_shd
  ,DPSECT(partp->dp_ssect)
  ,DPCYL(partp->dp_ecyl, partp->dp_esect)
  ,partp->dp_ehd
  ,DPSECT(partp->dp_esect));
}
