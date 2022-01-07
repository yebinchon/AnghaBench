; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_initiate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_initiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_hdr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"EAP: EAP-Initiate/Re-auth-Start - No suitable ERP keys available - try to start full EAP authentication\00", align 1
@EAPOL_eapTriggerStart = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EAP_ERP_TYPE_REAUTH_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_hdr*, i64)* @eap_peer_initiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peer_initiate(%struct.eap_sm* %0, %struct.eap_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_hdr*, align 8
  %6 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_hdr* %1, %struct.eap_hdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 (i32, i8*, ...) @wpa_printf(i32 %7, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %10 = load i32, i32* @EAPOL_eapTriggerStart, align 4
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32 @eapol_set_bool(%struct.eap_sm* %9, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eapol_set_bool(%struct.eap_sm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
