
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct smp_discover_request {int phy; int ignore_zone_group; int request_len; int response_len; int function; int frame_type; } ;
struct ccb_smpio {int dummy; } ;


 int CAM_DIR_BOTH ;
 scalar_t__ SMP_CRC_LEN ;
 int SMP_DIS_IGNORE_ZONE_GROUP ;
 int SMP_DIS_REQUEST_LEN ;
 int SMP_DIS_RESPONSE_LEN ;
 int SMP_FRAME_TYPE_REQUEST ;
 int SMP_FUNC_DISCOVER ;
 int bzero (struct smp_discover_request*,int) ;
 int cam_fill_smpio (struct ccb_smpio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int *,scalar_t__,int *,int,int ) ;

void
smp_discover(struct ccb_smpio *smpio, uint32_t retries,
      void (*cbfcnp)(struct cam_periph *, union ccb *),
      struct smp_discover_request *request, int request_len,
      uint8_t *response, int response_len, int long_response,
      int ignore_zone_group, int phy, uint32_t timeout)
{
 cam_fill_smpio(smpio,
         retries,
         cbfcnp,
                  CAM_DIR_BOTH,
         (uint8_t *)request,
         request_len - SMP_CRC_LEN,
         response,
         response_len,
         timeout);

 bzero(request, sizeof(*request));
 request->frame_type = SMP_FRAME_TYPE_REQUEST;
 request->function = SMP_FUNC_DISCOVER;
 request->response_len = long_response ? SMP_DIS_RESPONSE_LEN : 0;
 request->request_len = long_response ? SMP_DIS_REQUEST_LEN : 0;
 if (ignore_zone_group != 0)
  request->ignore_zone_group |= SMP_DIS_IGNORE_ZONE_GROUP;
 request->phy = phy;
}
