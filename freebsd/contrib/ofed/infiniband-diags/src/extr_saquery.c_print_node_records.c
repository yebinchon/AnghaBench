
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sa_query_result {unsigned int result_cnt; int p_result_madw; } ;
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;
struct TYPE_9__ {scalar_t__ description; } ;
struct TYPE_8__ {int node_guid; int port_guid; } ;
struct TYPE_7__ {TYPE_3__ node_desc; TYPE_2__ node_info; int lid; } ;
typedef TYPE_1__ ib_node_record_t ;
typedef TYPE_2__ ib_node_info_t ;
typedef TYPE_3__ ib_node_desc_t ;


 scalar_t__ ALL_DESC ;
 int IB_SA_ATTR_NODERECORD ;
 scalar_t__ NAME_OF_GUID ;
 scalar_t__ NAME_OF_LID ;
 scalar_t__ UNIQUE_LID_ONLY ;
 scalar_t__ cl_ntoh16 (int ) ;
 scalar_t__ cl_ntoh64 (int ) ;
 int exit (int ) ;
 int free (char*) ;
 int get_all_records (struct sa_handle*,int ,struct sa_query_result*) ;
 int node_name_map ;
 scalar_t__ node_print_desc ;
 int print_node_desc (TYPE_1__*) ;
 int print_node_record (TYPE_1__*) ;
 int printf (char*) ;
 char* remap_node_name (int ,scalar_t__,char*) ;
 scalar_t__ requested_guid ;
 scalar_t__ requested_lid ;
 int requested_name ;
 int sa_free_result_mad (struct sa_query_result*) ;
 TYPE_1__* sa_get_query_rec (int ,unsigned int) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int print_node_records(struct sa_handle * h, struct query_params *p)
{
 unsigned i;
 int ret;
 struct sa_query_result result;

 ret = get_all_records(h, IB_SA_ATTR_NODERECORD, &result);
 if (ret)
  return ret;

 if (node_print_desc == ALL_DESC) {
  printf("   LID \"name\"\n");
  printf("================\n");
 }
 for (i = 0; i < result.result_cnt; i++) {
  ib_node_record_t *node_record;
  node_record = sa_get_query_rec(result.p_result_madw, i);
  if (node_print_desc == ALL_DESC) {
   print_node_desc(node_record);
  } else if (node_print_desc == NAME_OF_LID) {
   if (requested_lid == cl_ntoh16(node_record->lid))
    print_node_record(node_record);
  } else if (node_print_desc == NAME_OF_GUID) {
   ib_node_info_t *p_ni = &(node_record->node_info);

   if (requested_guid == cl_ntoh64(p_ni->port_guid))
    print_node_record(node_record);
  } else {
   ib_node_info_t *p_ni = &(node_record->node_info);
   ib_node_desc_t *p_nd = &(node_record->node_desc);
   char *name;

   name = remap_node_name (node_name_map,
      cl_ntoh64(p_ni->node_guid),
      (char *)p_nd->description);

   if (!requested_name ||
       (strncmp(requested_name,
         (char *)node_record->node_desc.description,
         sizeof(node_record->
         node_desc.description)) == 0) ||
       (strncmp(requested_name,
         name,
         sizeof(node_record->
         node_desc.description)) == 0)) {
    print_node_record(node_record);
    if (node_print_desc == UNIQUE_LID_ONLY) {
     sa_free_result_mad(&result);
     exit(0);
    }
   }

   free(name);
  }
 }
 sa_free_result_mad(&result);
 return ret;
}
