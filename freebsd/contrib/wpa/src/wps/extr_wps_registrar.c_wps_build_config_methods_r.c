
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_registrar {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int config_methods; } ;


 int wps_build_config_methods (struct wpabuf*,int ) ;

__attribute__((used)) static int wps_build_config_methods_r(struct wps_registrar *reg,
          struct wpabuf *msg)
{
 return wps_build_config_methods(msg, reg->wps->config_methods);
}
