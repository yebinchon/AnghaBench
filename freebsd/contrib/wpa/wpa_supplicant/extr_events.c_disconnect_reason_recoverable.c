
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ WLAN_REASON_CLASS2_FRAME_FROM_NONAUTH_STA ;
 scalar_t__ WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA ;
 scalar_t__ WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY ;

__attribute__((used)) static int disconnect_reason_recoverable(u16 reason_code)
{
 return reason_code == WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY ||
  reason_code == WLAN_REASON_CLASS2_FRAME_FROM_NONAUTH_STA ||
  reason_code == WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA;
}
