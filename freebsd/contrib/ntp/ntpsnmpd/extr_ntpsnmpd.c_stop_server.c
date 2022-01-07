
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 scalar_t__ keep_running ;

RETSIGTYPE
stop_server(int a) {
    keep_running = 0;
}
