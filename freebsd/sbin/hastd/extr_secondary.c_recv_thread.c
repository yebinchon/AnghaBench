
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv {int dummy; } ;
struct hio {int hio_cmd; int hio_memsync; scalar_t__ hio_error; int hio_data; } ;
struct hast_resource {int hr_remotein; int hr_stat_flush; int hr_stat_delete; int hr_stat_write; int hr_stat_read; } ;


 int EX_TEMPFAIL ;





 int LOG_DEBUG ;
 int MAXPHYS ;
 int PJDLOG_ABORT (char*,int) ;
 int QUEUE_INSERT (int ,struct hio*) ;
 int QUEUE_TAKE (int ,struct hio*) ;
 int disk ;
 int free ;
 int hast_proto_recv_data (struct hast_resource*,int ,struct nv*,int ,int ) ;
 int hast_proto_recv_hdr (int ,struct nv**) ;
 int hio_clear (struct hio*) ;
 int hio_copy (struct hio*,struct hio*) ;
 int nv_free (struct nv*) ;
 int pjdlog_debug (int,char*,...) ;
 int reqlog (int ,int,int,struct hio*,char*,struct hio*) ;
 scalar_t__ requnpack (struct hast_resource*,struct hio*,struct nv*) ;
 int secondary_exit (int ,char*) ;
 int send ;

__attribute__((used)) static void *
recv_thread(void *arg)
{
 struct hast_resource *res = arg;
 struct hio *hio, *mshio;
 struct nv *nv;

 for (;;) {
  pjdlog_debug(2, "recv: Taking free request.");
  QUEUE_TAKE(free, hio);
  pjdlog_debug(2, "recv: (%p) Got request.", hio);
  if (hast_proto_recv_hdr(res->hr_remotein, &nv) == -1) {
   secondary_exit(EX_TEMPFAIL,
       "Unable to receive request header");
  }
  if (requnpack(res, hio, nv) != 0) {
   nv_free(nv);
   pjdlog_debug(2,
       "recv: (%p) Moving request to the send queue.",
       hio);
   QUEUE_INSERT(send, hio);
   continue;
  }
  switch (hio->hio_cmd) {
  case 129:
   res->hr_stat_read++;
   break;
  case 128:
   res->hr_stat_write++;
   break;
  case 132:
   res->hr_stat_delete++;
   break;
  case 131:
   res->hr_stat_flush++;
   break;
  case 130:
   break;
  default:
   PJDLOG_ABORT("Unexpected command (cmd=%hhu).",
       hio->hio_cmd);
  }
  reqlog(LOG_DEBUG, 2, -1, hio,
      "recv: (%p) Got request header: ", hio);
  if (hio->hio_cmd == 130) {
   nv_free(nv);
   pjdlog_debug(2,
       "recv: (%p) Moving request to the free queue.",
       hio);
   hio_clear(hio);
   QUEUE_INSERT(free, hio);
   continue;
  } else if (hio->hio_cmd == 128) {
   if (hast_proto_recv_data(res, res->hr_remotein, nv,
       hio->hio_data, MAXPHYS) == -1) {
    secondary_exit(EX_TEMPFAIL,
        "Unable to receive request data");
   }
   if (hio->hio_memsync) {




    pjdlog_debug(2, "recv: Taking free request.");
    QUEUE_TAKE(free, mshio);
    pjdlog_debug(2, "recv: (%p) Got request.",
        mshio);
    hio_copy(hio, mshio);
    mshio->hio_error = 0;




    hio->hio_memsync = 0;
    pjdlog_debug(2,
        "recv: (%p) Moving memsync request to the send queue.",
        mshio);
    QUEUE_INSERT(send, mshio);
   }
  }
  nv_free(nv);
  pjdlog_debug(2, "recv: (%p) Moving request to the disk queue.",
      hio);
  QUEUE_INSERT(disk, hio);
 }

 return (((void*)0));
}
