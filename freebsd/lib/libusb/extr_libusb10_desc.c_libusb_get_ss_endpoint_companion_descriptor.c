
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_ss_endpoint_companion_descriptor {int dummy; } ;
struct libusb_endpoint_descriptor {int extra_length; int extra; } ;
struct libusb_context {int dummy; } ;


 int LIBUSB_ERROR_INVALID_PARAM ;
 int libusb_parse_ss_endpoint_comp (int ,int ,struct libusb_ss_endpoint_companion_descriptor**) ;

int
libusb_get_ss_endpoint_companion_descriptor(struct libusb_context *ctx,
    const struct libusb_endpoint_descriptor *endpoint,
    struct libusb_ss_endpoint_companion_descriptor **ep_comp)
{
 if (endpoint == ((void*)0))
  return (LIBUSB_ERROR_INVALID_PARAM);
 return (libusb_parse_ss_endpoint_comp(endpoint->extra, endpoint->extra_length, ep_comp));
}
