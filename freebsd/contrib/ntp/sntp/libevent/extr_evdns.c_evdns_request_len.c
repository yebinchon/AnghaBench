
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
evdns_request_len(const size_t name_len) {
 return 96 +
  name_len + 2 +
  4;
}
