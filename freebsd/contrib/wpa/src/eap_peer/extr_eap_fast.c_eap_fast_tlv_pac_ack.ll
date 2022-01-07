; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_tlv_pac_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_tlv_pac_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_tlv_result_tlv = type { i32 }
%struct.eap_tlv_pac_ack_tlv = type { i8*, i8*, i8*, i8*, i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-FAST: Add PAC TLV (ack)\00", align 1
@EAP_TLV_PAC_TLV = common dso_local global i32 0, align 4
@EAP_TLV_TYPE_MANDATORY = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_ACKNOWLEDGEMENT = common dso_local global i32 0, align 4
@EAP_TLV_RESULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* ()* @eap_fast_tlv_pac_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_fast_tlv_pac_ack() #0 {
  %1 = alloca %struct.wpabuf*, align 8
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.eap_tlv_result_tlv*, align 8
  %4 = alloca %struct.eap_tlv_pac_ack_tlv*, align 8
  %5 = call %struct.wpabuf* @wpabuf_alloc(i32 44)
  store %struct.wpabuf* %5, %struct.wpabuf** %2, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %7 = icmp eq %struct.wpabuf* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store %struct.wpabuf* null, %struct.wpabuf** %1, align 8
  br label %35

9:                                                ; preds = %0
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %13 = call %struct.eap_tlv_pac_ack_tlv* @wpabuf_put(%struct.wpabuf* %12, i32 40)
  store %struct.eap_tlv_pac_ack_tlv* %13, %struct.eap_tlv_pac_ack_tlv** %4, align 8
  %14 = load i32, i32* @EAP_TLV_PAC_TLV, align 4
  %15 = load i32, i32* @EAP_TLV_TYPE_MANDATORY, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @host_to_be16(i32 %16)
  %18 = load %struct.eap_tlv_pac_ack_tlv*, %struct.eap_tlv_pac_ack_tlv** %4, align 8
  %19 = getelementptr inbounds %struct.eap_tlv_pac_ack_tlv, %struct.eap_tlv_pac_ack_tlv* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = call i8* @host_to_be16(i32 36)
  %21 = load %struct.eap_tlv_pac_ack_tlv*, %struct.eap_tlv_pac_ack_tlv** %4, align 8
  %22 = getelementptr inbounds %struct.eap_tlv_pac_ack_tlv, %struct.eap_tlv_pac_ack_tlv* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @PAC_TYPE_PAC_ACKNOWLEDGEMENT, align 4
  %24 = call i8* @host_to_be16(i32 %23)
  %25 = load %struct.eap_tlv_pac_ack_tlv*, %struct.eap_tlv_pac_ack_tlv** %4, align 8
  %26 = getelementptr inbounds %struct.eap_tlv_pac_ack_tlv, %struct.eap_tlv_pac_ack_tlv* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = call i8* @host_to_be16(i32 2)
  %28 = load %struct.eap_tlv_pac_ack_tlv*, %struct.eap_tlv_pac_ack_tlv** %4, align 8
  %29 = getelementptr inbounds %struct.eap_tlv_pac_ack_tlv, %struct.eap_tlv_pac_ack_tlv* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @EAP_TLV_RESULT_SUCCESS, align 4
  %31 = call i8* @host_to_be16(i32 %30)
  %32 = load %struct.eap_tlv_pac_ack_tlv*, %struct.eap_tlv_pac_ack_tlv** %4, align 8
  %33 = getelementptr inbounds %struct.eap_tlv_pac_ack_tlv, %struct.eap_tlv_pac_ack_tlv* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  store %struct.wpabuf* %34, %struct.wpabuf** %1, align 8
  br label %35

35:                                               ; preds = %9, %8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  ret %struct.wpabuf* %36
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.eap_tlv_pac_ack_tlv* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i8* @host_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
