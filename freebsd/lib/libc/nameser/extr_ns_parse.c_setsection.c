
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ns_sect ;
struct TYPE_3__ {int _rrnum; int ** _sections; int * _msg_ptr; scalar_t__ _sect; } ;
typedef TYPE_1__ ns_msg ;


 scalar_t__ ns_s_max ;

__attribute__((used)) static void
setsection(ns_msg *msg, ns_sect sect) {
 msg->_sect = sect;
 if (sect == ns_s_max) {
  msg->_rrnum = -1;
  msg->_msg_ptr = ((void*)0);
 } else {
  msg->_rrnum = 0;
  msg->_msg_ptr = msg->_sections[(int)sect];
 }
}
