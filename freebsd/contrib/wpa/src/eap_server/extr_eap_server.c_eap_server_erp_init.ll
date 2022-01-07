; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_server_erp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server.c_eap_server_erp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_server_erp_key = type { i8*, i64, i64, %struct.eap_server_erp_key*, %struct.eap_server_erp_key*, i64 }
%struct.eap_sm = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.eap_server_erp_key* }
%struct.TYPE_3__ = type { %struct.eap_server_erp_key* (%struct.eap_sm*, i32, i64*)* }

@EAP_EMSK_NAME_LEN = common dso_local global i32 0, align 4
@EAP_ERP_CS_HMAC_SHA256_128 = common dso_local global %struct.eap_server_erp_key zeroinitializer, align 8
@ERP_MAX_KEY_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*)* @eap_server_erp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_server_erp_init(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
