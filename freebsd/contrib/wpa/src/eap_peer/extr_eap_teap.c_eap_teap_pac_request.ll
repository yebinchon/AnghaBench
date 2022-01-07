; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_pac_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_pac_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.teap_tlv_request_action = type { i32, i32, i8*, i8* }
%struct.teap_tlv_hdr = type { i8*, i8* }
%struct.teap_attr_pac_type = type { i8*, i8*, i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"EAP-TEAP: Add Request Action TLV (Process TLV)\00", align 1
@TEAP_TLV_REQUEST_ACTION = common dso_local global i32 0, align 4
@TEAP_STATUS_SUCCESS = common dso_local global i32 0, align 4
@TEAP_REQUEST_ACTION_PROCESS_TLV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"EAP-TEAP: Add PAC TLV (PAC-Type = Tunnel)\00", align 1
@TEAP_TLV_PAC = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_TYPE = common dso_local global i32 0, align 4
@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* ()* @eap_teap_pac_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_teap_pac_request() #0 {
  %1 = alloca %struct.wpabuf*, align 8
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.teap_tlv_request_action*, align 8
  %4 = alloca %struct.teap_tlv_hdr*, align 8
  %5 = alloca %struct.teap_attr_pac_type*, align 8
  %6 = call %struct.wpabuf* @wpabuf_alloc(i32 64)
  store %struct.wpabuf* %6, %struct.wpabuf** %2, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %8 = icmp ne %struct.wpabuf* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store %struct.wpabuf* null, %struct.wpabuf** %1, align 8
  br label %56

10:                                               ; preds = %0
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %14 = call i8* @wpabuf_put(%struct.wpabuf* %13, i32 24)
  %15 = bitcast i8* %14 to %struct.teap_tlv_request_action*
  store %struct.teap_tlv_request_action* %15, %struct.teap_tlv_request_action** %3, align 8
  %16 = load i32, i32* @TEAP_TLV_REQUEST_ACTION, align 4
  %17 = call i8* @host_to_be16(i32 %16)
  %18 = load %struct.teap_tlv_request_action*, %struct.teap_tlv_request_action** %3, align 8
  %19 = getelementptr inbounds %struct.teap_tlv_request_action, %struct.teap_tlv_request_action* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = call i8* @host_to_be16(i32 2)
  %21 = load %struct.teap_tlv_request_action*, %struct.teap_tlv_request_action** %3, align 8
  %22 = getelementptr inbounds %struct.teap_tlv_request_action, %struct.teap_tlv_request_action* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @TEAP_STATUS_SUCCESS, align 4
  %24 = load %struct.teap_tlv_request_action*, %struct.teap_tlv_request_action** %3, align 8
  %25 = getelementptr inbounds %struct.teap_tlv_request_action, %struct.teap_tlv_request_action* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @TEAP_REQUEST_ACTION_PROCESS_TLV, align 4
  %27 = load %struct.teap_tlv_request_action*, %struct.teap_tlv_request_action** %3, align 8
  %28 = getelementptr inbounds %struct.teap_tlv_request_action, %struct.teap_tlv_request_action* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %32 = call i8* @wpabuf_put(%struct.wpabuf* %31, i32 16)
  %33 = bitcast i8* %32 to %struct.teap_tlv_hdr*
  store %struct.teap_tlv_hdr* %33, %struct.teap_tlv_hdr** %4, align 8
  %34 = load i32, i32* @TEAP_TLV_PAC, align 4
  %35 = call i8* @host_to_be16(i32 %34)
  %36 = load %struct.teap_tlv_hdr*, %struct.teap_tlv_hdr** %4, align 8
  %37 = getelementptr inbounds %struct.teap_tlv_hdr, %struct.teap_tlv_hdr* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = call i8* @host_to_be16(i32 24)
  %39 = load %struct.teap_tlv_hdr*, %struct.teap_tlv_hdr** %4, align 8
  %40 = getelementptr inbounds %struct.teap_tlv_hdr, %struct.teap_tlv_hdr* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %42 = call i8* @wpabuf_put(%struct.wpabuf* %41, i32 24)
  %43 = bitcast i8* %42 to %struct.teap_attr_pac_type*
  store %struct.teap_attr_pac_type* %43, %struct.teap_attr_pac_type** %5, align 8
  %44 = load i32, i32* @PAC_TYPE_PAC_TYPE, align 4
  %45 = call i8* @host_to_be16(i32 %44)
  %46 = load %struct.teap_attr_pac_type*, %struct.teap_attr_pac_type** %5, align 8
  %47 = getelementptr inbounds %struct.teap_attr_pac_type, %struct.teap_attr_pac_type* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = call i8* @host_to_be16(i32 2)
  %49 = load %struct.teap_attr_pac_type*, %struct.teap_attr_pac_type** %5, align 8
  %50 = getelementptr inbounds %struct.teap_attr_pac_type, %struct.teap_attr_pac_type* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %52 = call i8* @host_to_be16(i32 %51)
  %53 = load %struct.teap_attr_pac_type*, %struct.teap_attr_pac_type** %5, align 8
  %54 = getelementptr inbounds %struct.teap_attr_pac_type, %struct.teap_attr_pac_type* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  store %struct.wpabuf* %55, %struct.wpabuf** %1, align 8
  br label %56

56:                                               ; preds = %10, %9
  %57 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  ret %struct.wpabuf* %57
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i8* @host_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
