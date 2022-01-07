; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_peer_config = type { i32 }
%struct.eapol_sm = type { %struct.eap_peer_config* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eap_peer_config* (i8*)* @eapol_sm_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eap_peer_config* @eapol_sm_get_config(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.eapol_sm*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.eapol_sm*
  store %struct.eapol_sm* %5, %struct.eapol_sm** %3, align 8
  %6 = load %struct.eapol_sm*, %struct.eapol_sm** %3, align 8
  %7 = icmp ne %struct.eapol_sm* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.eapol_sm*, %struct.eapol_sm** %3, align 8
  %10 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %9, i32 0, i32 0
  %11 = load %struct.eap_peer_config*, %struct.eap_peer_config** %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi %struct.eap_peer_config* [ %11, %8 ], [ null, %12 ]
  ret %struct.eap_peer_config* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
