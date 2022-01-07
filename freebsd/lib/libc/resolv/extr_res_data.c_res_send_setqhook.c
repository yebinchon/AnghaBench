
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int res_send_qhook ;
struct TYPE_2__ {int qhook; } ;


 TYPE_1__ _res ;

void
res_send_setqhook(res_send_qhook hook) {
 _res.qhook = hook;
}
