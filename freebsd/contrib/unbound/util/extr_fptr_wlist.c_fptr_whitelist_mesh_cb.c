
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mesh_cb_func_type ;


 int auth_xfer_probe_lookup_callback ;
 int auth_xfer_transfer_lookup_callback ;
 int libworker_bg_done_cb ;
 int libworker_event_done_cb ;
 int libworker_fg_done_cb ;
 int probe_answer_cb ;

int fptr_whitelist_mesh_cb(mesh_cb_func_type fptr)
{
 if(fptr == &libworker_fg_done_cb) return 1;
 else if(fptr == &libworker_bg_done_cb) return 1;
 else if(fptr == &libworker_event_done_cb) return 1;
 else if(fptr == &probe_answer_cb) return 1;
 else if(fptr == &auth_xfer_probe_lookup_callback) return 1;
 else if(fptr == &auth_xfer_transfer_lookup_callback) return 1;
 return 0;
}
