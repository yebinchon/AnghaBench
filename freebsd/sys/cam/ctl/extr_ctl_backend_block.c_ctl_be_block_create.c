
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmpstr ;
struct ctl_lun_create_params {int flags; int device_type; int lun_size_bytes; int blocksize_bytes; char* serial_num; char* device_id; scalar_t__ req_lun_id; } ;
struct TYPE_3__ {struct ctl_lun_create_params create; } ;
struct ctl_lun_req {int status; int error_str; int args_nvl; TYPE_1__ reqdata; } ;
struct ctl_be_lun {int lun_type; int flags; int blocksize; int maxlba; int options; scalar_t__ lun_id; scalar_t__ device_id; scalar_t__ serial_num; int * be; int lun_config_status; int lun_shutdown; scalar_t__ req_lun_id; struct ctl_be_block_lun* be_lun; } ;
struct ctl_be_block_softc {int num_luns; int lock; int lun_list; } ;
struct ctl_be_block_lun {int flags; int size_bytes; int size_blocks; int num_threads; int io_lock; int queue_lock; int * lun_zone; struct ctl_be_block_lun* dev_path; int * io_taskqueue; int disk_stats; struct ctl_be_lun cbe_lun; int lunname; int io_task; int * vn; int datamove_queue; int config_write_queue; int config_read_queue; int input_queue; struct ctl_be_block_softc* softc; struct ctl_lun_create_params params; } ;
struct TYPE_4__ {int flags; scalar_t__ ha_mode; } ;


 int CTLBLK_MAX_SEG ;
 int CTL_BE_BLOCK_LUN_CONFIG_ERR ;
 int CTL_BE_BLOCK_LUN_UNCONFIGURED ;
 int CTL_BE_BLOCK_LUN_WAITING ;
 int CTL_FLAG_ACTIVE_SHELF ;
 scalar_t__ CTL_HA_MODE_SER_ONLY ;
 int CTL_LUN_ERROR ;
 int CTL_LUN_FLAG_DEVID ;
 int CTL_LUN_FLAG_DEV_TYPE ;
 int CTL_LUN_FLAG_ID_REQ ;
 int CTL_LUN_FLAG_NO_MEDIA ;
 int CTL_LUN_FLAG_PRIMARY ;
 int CTL_LUN_FLAG_SERIAL_NUM ;
 int CTL_LUN_OK ;
 int CTL_LUN_WARNING ;
 int DEVSTAT_ALL_SUPPORTED ;
 int DEVSTAT_PRIORITY_OTHER ;
 int DEVSTAT_TYPE_IF_OTHER ;
 int EINTR ;
 int MIN (int,int) ;
 int MTX_DEF ;
 int M_CTLBLK ;
 int M_WAITOK ;
 int M_ZERO ;
 int PCATCH ;
 int PUSER ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct ctl_be_block_lun*,int ) ;
 int STAILQ_REMOVE (int *,struct ctl_be_block_lun*,int ,int ) ;
 int TASK_INIT (int *,int ,int ,struct ctl_be_block_lun*) ;
 int T_CDROM ;
 int T_DIRECT ;
 int cbb_num_threads ;
 TYPE_2__* control_softc ;
 int ctl_add_lun (struct ctl_be_lun*) ;
 int ctl_be_block_close (struct ctl_be_block_lun*) ;
 int ctl_be_block_driver ;
 int ctl_be_block_lun ;
 int ctl_be_block_lun_config_status ;
 int ctl_be_block_lun_shutdown ;
 int ctl_be_block_open (struct ctl_be_block_lun*,struct ctl_lun_req*) ;
 int ctl_be_block_worker ;
 int devstat_new_entry (char*,scalar_t__,int,int ,int,int ) ;
 char* dnvlist_get_string (int ,char*,int *) ;
 int free (struct ctl_be_block_lun*,int ) ;
 int links ;
 struct ctl_be_block_lun* malloc (int,int ,int) ;
 int msleep (struct ctl_be_block_lun*,int *,int ,char*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvlist_clone (int ) ;
 int nvlist_destroy (int ) ;
 int snprintf (char*,int,char*,...) ;
 int sprintf (int ,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strncpy (char*,char*,int ) ;
 int strtol (char const*,int *,int ) ;
 int * taskqueue_create (int ,int,int ,int **) ;
 int taskqueue_free (int *) ;
 int taskqueue_start_threads (int **,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;
 int * uma_zcreate (int ,int ,int *,int *,int *,int *,int ,int ) ;
 int uma_zdestroy (int *) ;

__attribute__((used)) static int
ctl_be_block_create(struct ctl_be_block_softc *softc, struct ctl_lun_req *req)
{
 struct ctl_be_lun *cbe_lun;
 struct ctl_be_block_lun *be_lun;
 struct ctl_lun_create_params *params;
 char num_thread_str[16];
 char tmpstr[32];
 const char *value;
 int retval, num_threads;
 int tmp_num_threads;

 params = &req->reqdata.create;
 retval = 0;
 req->status = CTL_LUN_OK;

 be_lun = malloc(sizeof(*be_lun), M_CTLBLK, M_ZERO | M_WAITOK);
 cbe_lun = &be_lun->cbe_lun;
 cbe_lun->be_lun = be_lun;
 be_lun->params = req->reqdata.create;
 be_lun->softc = softc;
 STAILQ_INIT(&be_lun->input_queue);
 STAILQ_INIT(&be_lun->config_read_queue);
 STAILQ_INIT(&be_lun->config_write_queue);
 STAILQ_INIT(&be_lun->datamove_queue);
 sprintf(be_lun->lunname, "cblk%d", softc->num_luns);
 mtx_init(&be_lun->io_lock, "cblk io lock", ((void*)0), MTX_DEF);
 mtx_init(&be_lun->queue_lock, "cblk queue lock", ((void*)0), MTX_DEF);
 cbe_lun->options = nvlist_clone(req->args_nvl);
 be_lun->lun_zone = uma_zcreate(be_lun->lunname, CTLBLK_MAX_SEG,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, 0);
 if (be_lun->lun_zone == ((void*)0)) {
  snprintf(req->error_str, sizeof(req->error_str),
    "error allocating UMA zone");
  goto bailout_error;
 }

 if (params->flags & CTL_LUN_FLAG_DEV_TYPE)
  cbe_lun->lun_type = params->device_type;
 else
  cbe_lun->lun_type = T_DIRECT;
 be_lun->flags = CTL_BE_BLOCK_LUN_UNCONFIGURED;
 cbe_lun->flags = 0;
 value = dnvlist_get_string(cbe_lun->options, "ha_role", ((void*)0));
 if (value != ((void*)0)) {
  if (strcmp(value, "primary") == 0)
   cbe_lun->flags |= CTL_LUN_FLAG_PRIMARY;
 } else if (control_softc->flags & CTL_FLAG_ACTIVE_SHELF)
  cbe_lun->flags |= CTL_LUN_FLAG_PRIMARY;

 if (cbe_lun->lun_type == T_DIRECT ||
     cbe_lun->lun_type == T_CDROM) {
  be_lun->size_bytes = params->lun_size_bytes;
  if (params->blocksize_bytes != 0)
   cbe_lun->blocksize = params->blocksize_bytes;
  else if (cbe_lun->lun_type == T_CDROM)
   cbe_lun->blocksize = 2048;
  else
   cbe_lun->blocksize = 512;
  be_lun->size_blocks = be_lun->size_bytes / cbe_lun->blocksize;
  cbe_lun->maxlba = (be_lun->size_blocks == 0) ?
      0 : (be_lun->size_blocks - 1);

  if ((cbe_lun->flags & CTL_LUN_FLAG_PRIMARY) ||
      control_softc->ha_mode == CTL_HA_MODE_SER_ONLY) {
   retval = ctl_be_block_open(be_lun, req);
   if (retval != 0) {
    retval = 0;
    req->status = CTL_LUN_WARNING;
   }
  }
  num_threads = cbb_num_threads;
 } else {
  num_threads = 1;
 }

 value = dnvlist_get_string(cbe_lun->options, "num_threads", ((void*)0));
 if (value != ((void*)0)) {
  tmp_num_threads = strtol(value, ((void*)0), 0);






  if (tmp_num_threads < 1) {
   snprintf(req->error_str, sizeof(req->error_str),
     "invalid number of threads %s",
     num_thread_str);
   goto bailout_error;
  }
  num_threads = tmp_num_threads;
 }

 if (be_lun->vn == ((void*)0))
  cbe_lun->flags |= CTL_LUN_FLAG_NO_MEDIA;

 params->lun_size_bytes = be_lun->size_bytes;
 params->blocksize_bytes = cbe_lun->blocksize;
 if (params->flags & CTL_LUN_FLAG_ID_REQ) {
  cbe_lun->req_lun_id = params->req_lun_id;
  cbe_lun->flags |= CTL_LUN_FLAG_ID_REQ;
 } else
  cbe_lun->req_lun_id = 0;

 cbe_lun->lun_shutdown = ctl_be_block_lun_shutdown;
 cbe_lun->lun_config_status = ctl_be_block_lun_config_status;
 cbe_lun->be = &ctl_be_block_driver;

 if ((params->flags & CTL_LUN_FLAG_SERIAL_NUM) == 0) {
  snprintf(tmpstr, sizeof(tmpstr), "MYSERIAL%04d",
    softc->num_luns);
  strncpy((char *)cbe_lun->serial_num, tmpstr,
   MIN(sizeof(cbe_lun->serial_num), sizeof(tmpstr)));


  strncpy((char *)params->serial_num, tmpstr,
   MIN(sizeof(params->serial_num), sizeof(tmpstr)));
 } else {
  strncpy((char *)cbe_lun->serial_num, params->serial_num,
   MIN(sizeof(cbe_lun->serial_num),
   sizeof(params->serial_num)));
 }
 if ((params->flags & CTL_LUN_FLAG_DEVID) == 0) {
  snprintf(tmpstr, sizeof(tmpstr), "MYDEVID%04d", softc->num_luns);
  strncpy((char *)cbe_lun->device_id, tmpstr,
   MIN(sizeof(cbe_lun->device_id), sizeof(tmpstr)));


  strncpy((char *)params->device_id, tmpstr,
   MIN(sizeof(params->device_id), sizeof(tmpstr)));
 } else {
  strncpy((char *)cbe_lun->device_id, params->device_id,
   MIN(sizeof(cbe_lun->device_id),
       sizeof(params->device_id)));
 }

 TASK_INIT(&be_lun->io_task, 0, ctl_be_block_worker, be_lun);

 be_lun->io_taskqueue = taskqueue_create(be_lun->lunname, M_WAITOK,
     taskqueue_thread_enqueue, &be_lun->io_taskqueue);

 if (be_lun->io_taskqueue == ((void*)0)) {
  snprintf(req->error_str, sizeof(req->error_str),
    "unable to create taskqueue");
  goto bailout_error;
 }
 retval = taskqueue_start_threads(&be_lun->io_taskqueue,
                     num_threads,
                  PUSER,

      "%s taskq", be_lun->lunname);

 if (retval != 0)
  goto bailout_error;

 be_lun->num_threads = num_threads;

 mtx_lock(&softc->lock);
 softc->num_luns++;
 STAILQ_INSERT_TAIL(&softc->lun_list, be_lun, links);

 mtx_unlock(&softc->lock);

 retval = ctl_add_lun(&be_lun->cbe_lun);
 if (retval != 0) {
  mtx_lock(&softc->lock);
  STAILQ_REMOVE(&softc->lun_list, be_lun, ctl_be_block_lun,
         links);
  softc->num_luns--;
  mtx_unlock(&softc->lock);
  snprintf(req->error_str, sizeof(req->error_str),
    "ctl_add_lun() returned error %d, see dmesg for "
    "details", retval);
  retval = 0;
  goto bailout_error;
 }

 mtx_lock(&softc->lock);





 be_lun->flags |= CTL_BE_BLOCK_LUN_WAITING;

 while (be_lun->flags & CTL_BE_BLOCK_LUN_UNCONFIGURED) {
  retval = msleep(be_lun, &softc->lock, PCATCH, "ctlblk", 0);
  if (retval == EINTR)
   break;
 }
 be_lun->flags &= ~CTL_BE_BLOCK_LUN_WAITING;

 if (be_lun->flags & CTL_BE_BLOCK_LUN_CONFIG_ERR) {
  snprintf(req->error_str, sizeof(req->error_str),
    "LUN configuration error, see dmesg for details");
  STAILQ_REMOVE(&softc->lun_list, be_lun, ctl_be_block_lun,
         links);
  softc->num_luns--;
  mtx_unlock(&softc->lock);
  goto bailout_error;
 } else {
  params->req_lun_id = cbe_lun->lun_id;
 }

 mtx_unlock(&softc->lock);

 be_lun->disk_stats = devstat_new_entry("cbb", params->req_lun_id,
            cbe_lun->blocksize,
            DEVSTAT_ALL_SUPPORTED,
            cbe_lun->lun_type
            | DEVSTAT_TYPE_IF_OTHER,
            DEVSTAT_PRIORITY_OTHER);

 return (retval);

bailout_error:
 req->status = CTL_LUN_ERROR;

 if (be_lun->io_taskqueue != ((void*)0))
  taskqueue_free(be_lun->io_taskqueue);
 ctl_be_block_close(be_lun);
 if (be_lun->dev_path != ((void*)0))
  free(be_lun->dev_path, M_CTLBLK);
 if (be_lun->lun_zone != ((void*)0))
  uma_zdestroy(be_lun->lun_zone);
 nvlist_destroy(cbe_lun->options);
 mtx_destroy(&be_lun->queue_lock);
 mtx_destroy(&be_lun->io_lock);
 free(be_lun, M_CTLBLK);

 return (retval);
}
