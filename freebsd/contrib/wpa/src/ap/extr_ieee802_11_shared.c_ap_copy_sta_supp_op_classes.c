
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {size_t* supp_op_classes; } ;


 int os_free (size_t*) ;
 size_t* os_malloc (int) ;
 int os_memcpy (size_t*,int const*,size_t) ;

void ap_copy_sta_supp_op_classes(struct sta_info *sta,
     const u8 *supp_op_classes,
     size_t supp_op_classes_len)
{
 if (!supp_op_classes)
  return;
 os_free(sta->supp_op_classes);
 sta->supp_op_classes = os_malloc(1 + supp_op_classes_len);
 if (!sta->supp_op_classes)
  return;

 sta->supp_op_classes[0] = supp_op_classes_len;
 os_memcpy(sta->supp_op_classes + 1, supp_op_classes,
    supp_op_classes_len);
}
