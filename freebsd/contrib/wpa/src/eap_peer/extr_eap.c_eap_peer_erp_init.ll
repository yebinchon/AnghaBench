; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_erp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_peer_erp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_erp_key = type { i8*, i64, i64, i32, %struct.eap_erp_key*, %struct.eap_erp_key* }
%struct.eap_sm = type { i64, i32, %struct.eap_erp_key*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.eap_erp_key* (%struct.eap_sm*, i32, i64*)* }

@EAP_EMSK_NAME_LEN = common dso_local global i32 0, align 4
@EAP_ERP_CS_HMAC_SHA256_128 = common dso_local global %struct.eap_erp_key zeroinitializer, align 8
@ERP_MAX_KEY_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_peer_erp_init(%struct.eap_sm* %0, %struct.eap_erp_key* %1, i64 %2, %struct.eap_erp_key* %3, i64 %4) #0 {
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_erp_key*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.eap_erp_key*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_erp_key* %1, %struct.eap_erp_key** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.eap_erp_key* %3, %struct.eap_erp_key** %9, align 8
  store i64 %4, i64* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
