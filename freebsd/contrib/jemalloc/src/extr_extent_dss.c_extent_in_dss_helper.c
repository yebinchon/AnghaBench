
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dss_base ;

__attribute__((used)) static bool
extent_in_dss_helper(void *addr, void *max) {
 return ((uintptr_t)addr >= (uintptr_t)dss_base && (uintptr_t)addr <
     (uintptr_t)max);
}
