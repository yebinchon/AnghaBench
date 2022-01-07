
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ns; } ;
typedef TYPE_1__ nstime_t ;


 int MILLION ;

uint64_t
nstime_msec(const nstime_t *time) {
 return time->ns / MILLION;
}
