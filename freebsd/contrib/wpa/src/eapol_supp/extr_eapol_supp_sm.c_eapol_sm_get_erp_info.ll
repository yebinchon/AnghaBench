; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_get_erp_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_get_erp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i32 }
%struct.eap_peer_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eapol_sm_get_erp_info(%struct.eapol_sm* %0, %struct.eap_peer_config* %1, i32** %2, i64* %3, i32** %4, i64* %5, i32* %6, i32** %7, i64* %8) #0 {
  %10 = alloca %struct.eapol_sm*, align 8
  %11 = alloca %struct.eap_peer_config*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i64*, align 8
  store %struct.eapol_sm* %0, %struct.eapol_sm** %10, align 8
  store %struct.eap_peer_config* %1, %struct.eap_peer_config** %11, align 8
  store i32** %2, i32*** %12, align 8
  store i64* %3, i64** %13, align 8
  store i32** %4, i32*** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32** %7, i32*** %17, align 8
  store i64* %8, i64** %18, align 8
  ret i32 -1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
