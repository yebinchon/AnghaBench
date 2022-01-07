
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int dummy; } ;
struct hio {int hio_cmd; scalar_t__ hio_error; size_t hio_length; void* hio_data; scalar_t__ hio_memsync; int hio_seq; } ;
struct hast_resource {int hr_remoteout; int hr_stat_flush_error; int hr_stat_delete_error; int hr_stat_write_error; int hr_stat_read_error; } ;


 int EX_TEMPFAIL ;




 int LOG_DEBUG ;
 int PJDLOG_ABORT (char*,int) ;
 int PJDLOG_ASSERT (int) ;
 int QUEUE_INSERT (int ,struct hio*) ;
 int QUEUE_TAKE (int ,struct hio*) ;
 int free ;
 int hast_proto_send (struct hast_resource*,int ,struct nv*,void*,size_t) ;
 int hio_clear (struct hio*) ;
 int nv_add_int16 (struct nv*,scalar_t__,char*) ;
 int nv_add_int8 (struct nv*,int,char*) ;
 int nv_add_uint64 (struct nv*,int ,char*) ;
 struct nv* nv_alloc () ;
 int nv_free (struct nv*) ;
 int pjdlog_debug (int,char*,...) ;
 int reqlog (int ,int,int,struct hio*,char*,struct hio*) ;
 int secondary_exit (int ,char*) ;
 int send ;

__attribute__((used)) static void *
send_thread(void *arg)
{
 struct hast_resource *res = arg;
 struct nv *nvout;
 struct hio *hio;
 void *data;
 size_t length;

 for (;;) {
  pjdlog_debug(2, "send: Taking request.");
  QUEUE_TAKE(send, hio);
  reqlog(LOG_DEBUG, 2, -1, hio, "send: (%p) Got request: ", hio);
  nvout = nv_alloc();

  nv_add_uint64(nvout, hio->hio_seq, "seq");
  if (hio->hio_memsync) {
   PJDLOG_ASSERT(hio->hio_cmd == 128);
   nv_add_int8(nvout, 1, "received");
  }
  switch (hio->hio_cmd) {
  case 129:
   if (hio->hio_error == 0) {
    data = hio->hio_data;
    length = hio->hio_length;
    break;
   }




  case 131:
  case 130:
  case 128:
   data = ((void*)0);
   length = 0;
   break;
  default:
   PJDLOG_ABORT("Unexpected command (cmd=%hhu).",
       hio->hio_cmd);
  }
  if (hio->hio_error != 0) {
   switch (hio->hio_cmd) {
   case 129:
    res->hr_stat_read_error++;
    break;
   case 128:
    res->hr_stat_write_error++;
    break;
   case 131:
    res->hr_stat_delete_error++;
    break;
   case 130:
    res->hr_stat_flush_error++;
    break;
   }
   nv_add_int16(nvout, hio->hio_error, "error");
  }
  if (hast_proto_send(res, res->hr_remoteout, nvout, data,
      length) == -1) {
   secondary_exit(EX_TEMPFAIL, "Unable to send reply");
  }
  nv_free(nvout);
  pjdlog_debug(2, "send: (%p) Moving request to the free queue.",
      hio);
  hio_clear(hio);
  QUEUE_INSERT(free, hio);
 }

 return (((void*)0));
}
