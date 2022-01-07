
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BLOCK_LEN (int) ;
 int BLOCK_TAG (int) ;
 int BLOCK_TAG_VSDB ;
 size_t CEA_DATA_OFF ;
 int CEA_DATA_START ;
 int CEA_TAG_ID ;
 size_t EXT_TAG ;
 int HDMI_OUI ;
 int HDMI_OUI_LEN ;
 int HDMI_VSDB_MINLEN ;
 scalar_t__ memcmp (int*,int ,int ) ;

__attribute__((used)) static int
a10hdmi_detect_hdmi_vsdb(uint8_t *edid)
{
 int off, p, btag, blen;

 if (edid[EXT_TAG] != CEA_TAG_ID)
  return (0);

 off = edid[CEA_DATA_OFF];


 if (off <= CEA_DATA_START)
  return (0);


 for (p = CEA_DATA_START; p < off;) {
  btag = BLOCK_TAG(edid[p]);
  blen = BLOCK_LEN(edid[p]);


  if (p + blen + 1 > off)
   break;


  if (btag == BLOCK_TAG_VSDB && blen >= HDMI_VSDB_MINLEN &&
      memcmp(&edid[p + 1], HDMI_OUI, HDMI_OUI_LEN) == 0)
   return (1);


  p += (1 + blen);
 }

 return (0);
}
