
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isoent {int dummy; } ;
struct iso9660 {int dummy; } ;
typedef enum vdd_type { ____Placeholder_vdd_type } vdd_type ;
typedef enum dir_rec_type { ____Placeholder_dir_rec_type } dir_rec_type ;


 int SIZE_MAX ;
 int set_directory_record (int *,int ,struct isoent*,struct iso9660*,int,int) ;

__attribute__((used)) static inline int
get_dir_rec_size(struct iso9660 *iso9660, struct isoent *isoent,
    enum dir_rec_type t, enum vdd_type vdd_type)
{

 return (set_directory_record(((void*)0), SIZE_MAX,
     isoent, iso9660, t, vdd_type));
}
