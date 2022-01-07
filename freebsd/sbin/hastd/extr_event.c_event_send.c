
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nv {int dummy; } ;
struct hast_resource {int hr_event; } ;


 int EVENT_MAX ;
 int EVENT_MIN ;
 int LOG_ERR ;
 int PJDLOG_ASSERT (int) ;
 int hast_proto_recv_hdr (int ,struct nv**) ;
 int hast_proto_send (struct hast_resource const*,int ,struct nv*,int *,int ) ;
 int nv_add_uint8 (struct nv*,int ,char*) ;
 struct nv* nv_alloc () ;
 int nv_error (struct nv*) ;
 int nv_free (struct nv*) ;
 int pjdlog_common (int ,int ,int,char*) ;
 int pjdlog_errno (int ,char*) ;

void
event_send(const struct hast_resource *res, int event)
{
 struct nv *nvin, *nvout;
 int error;

 PJDLOG_ASSERT(res != ((void*)0));
 PJDLOG_ASSERT(event >= EVENT_MIN && event <= EVENT_MAX);

 nvin = nvout = ((void*)0);




 nvout = nv_alloc();
 nv_add_uint8(nvout, (uint8_t)event, "event");
 error = nv_error(nvout);
 if (error != 0) {
  pjdlog_common(LOG_ERR, 0, error,
      "Unable to prepare event header");
  goto done;
 }
 if (hast_proto_send(res, res->hr_event, nvout, ((void*)0), 0) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to send event header");
  goto done;
 }
 if (hast_proto_recv_hdr(res->hr_event, &nvin) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to receive event header");
  goto done;
 }




done:
 if (nvin != ((void*)0))
  nv_free(nvin);
 if (nvout != ((void*)0))
  nv_free(nvout);
}
