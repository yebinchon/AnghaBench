
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int hdmi_infoframe_checksum (void*,size_t) ;

__attribute__((used)) static void hdmi_infoframe_set_checksum(void *buffer, size_t size)
{
 uint8_t *ptr = buffer;

 ptr[3] = hdmi_infoframe_checksum(buffer, size);
}
