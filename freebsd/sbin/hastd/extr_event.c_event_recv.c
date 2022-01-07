
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nv {int dummy; } ;
struct hast_resource {int hr_event; int hr_name; int hr_exec; int hr_role; } ;




 int EVENT_NONE ;




 int LOG_DEBUG ;
 int LOG_ERR ;
 int PJDLOG_ASSERT (int ) ;
 int errno ;
 int hast_proto_recv_hdr (int ,struct nv**) ;
 int hast_proto_send (struct hast_resource const*,int ,struct nv*,int *,int ) ;
 int hook_exec (int ,char const*,int ,int *) ;
 int nv_add_int16 (struct nv*,int ,char*) ;
 struct nv* nv_alloc () ;
 int nv_error (struct nv*) ;
 int nv_free (struct nv*) ;
 int nv_get_uint8 (struct nv*,char*) ;
 int pjdlog_common (int ,int,int,char*) ;
 int pjdlog_errno (int ,char*) ;
 int pjdlog_error (char*,...) ;
 int pjdlog_prefix_set (char*,char*,...) ;
 int role2str (int ) ;

int
event_recv(const struct hast_resource *res)
{
 struct nv *nvin, *nvout;
 const char *evstr;
 uint8_t event;
 int error;

 PJDLOG_ASSERT(res != ((void*)0));

 nvin = nvout = ((void*)0);

 if (hast_proto_recv_hdr(res->hr_event, &nvin) == -1) {




  pjdlog_common(LOG_DEBUG, 1, errno,
      "Unable to receive event header");
  goto fail;
 }

 event = nv_get_uint8(nvin, "event");
 if (event == EVENT_NONE) {
  pjdlog_error("Event header is missing 'event' field.");
  goto fail;
 }

 switch (event) {
 case 133:
  evstr = "connect";
  break;
 case 132:
  evstr = "disconnect";
  break;
 case 128:
  evstr = "syncstart";
  break;
 case 130:
  evstr = "syncdone";
  break;
 case 129:
  evstr = "syncintr";
  break;
 case 131:
  evstr = "split-brain";
  break;
 default:
  pjdlog_error("Event header contain invalid event number (%hhu).",
      event);
  goto fail;
 }

 pjdlog_prefix_set("[%s] (%s) ", res->hr_name, role2str(res->hr_role));
 hook_exec(res->hr_exec, evstr, res->hr_name, ((void*)0));
 pjdlog_prefix_set("%s", "");

 nvout = nv_alloc();
 nv_add_int16(nvout, 0, "error");
 error = nv_error(nvout);
 if (error != 0) {
  pjdlog_common(LOG_ERR, 0, error,
      "Unable to prepare event header");
  goto fail;
 }
 if (hast_proto_send(res, res->hr_event, nvout, ((void*)0), 0) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to send event header");
  goto fail;
 }
 nv_free(nvin);
 nv_free(nvout);
 return (0);
fail:
 if (nvin != ((void*)0))
  nv_free(nvin);
 if (nvout != ((void*)0))
  nv_free(nvout);
 return (-1);
}
