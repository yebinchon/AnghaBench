
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG (char*,...) ;
 int IB_VENDOR_RANGE2_DATA_OFFS ;
 int IB_VENDOR_RANGE2_DATA_SIZE ;
 int host_and_domain ;
 int mad_free (void*) ;
 void* mad_receive_via (int ,int,int ) ;
 scalar_t__ mad_respond_via (void*,int ,int ,int ) ;
 int memcpy (char*,int ,int ) ;
 int srcport ;
 void* umad_get_mad (void*) ;
 scalar_t__ umad_status (void*) ;

__attribute__((used)) static char *ibping_serv(void)
{
 void *umad;
 void *mad;
 char *data;

 DEBUG("starting to serve...");

 while ((umad = mad_receive_via(0, -1, srcport))) {

  if (umad_status(umad) == 0) {
   mad = umad_get_mad(umad);
   data = (char *)mad + IB_VENDOR_RANGE2_DATA_OFFS;

   memcpy(data, host_and_domain, IB_VENDOR_RANGE2_DATA_SIZE);

   DEBUG("Pong: %s", data);

   if (mad_respond_via(umad, 0, 0, srcport) < 0)
    DEBUG("respond failed");

  }
  mad_free(umad);
 }

 DEBUG("server out");
 return 0;
}
