
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 char* atf_tc_get_config_var (int const*,char*) ;

__attribute__((used)) static const char *
get_cam_test_device(const atf_tc_t *tc)
{
 const char *cam_test_device;

 cam_test_device = atf_tc_get_config_var(tc, "cam_test_device");

 return (cam_test_device);
}
