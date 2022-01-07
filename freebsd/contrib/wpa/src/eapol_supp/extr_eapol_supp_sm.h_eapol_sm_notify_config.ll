; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.h_eapol_sm_notify_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.h_eapol_sm_notify_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i32 }
%struct.eap_peer_config = type { i32 }
%struct.eapol_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_sm*, %struct.eap_peer_config*, %struct.eapol_config*)* @eapol_sm_notify_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_sm_notify_config(%struct.eapol_sm* %0, %struct.eap_peer_config* %1, %struct.eapol_config* %2) #0 {
  %4 = alloca %struct.eapol_sm*, align 8
  %5 = alloca %struct.eap_peer_config*, align 8
  %6 = alloca %struct.eapol_config*, align 8
  store %struct.eapol_sm* %0, %struct.eapol_sm** %4, align 8
  store %struct.eap_peer_config* %1, %struct.eap_peer_config** %5, align 8
  store %struct.eapol_config* %2, %struct.eapol_config** %6, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
