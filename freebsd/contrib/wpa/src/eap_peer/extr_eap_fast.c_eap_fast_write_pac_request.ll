; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_write_pac_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_write_pac_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_tlv_hdr = type { i8*, i8* }
%struct.eap_tlv_request_action_tlv = type { i8*, i8*, i8* }
%struct.eap_tlv_pac_type_tlv = type { i8*, i8*, i8* }

@EAP_TLV_REQUEST_ACTION_TLV = common dso_local global i32 0, align 4
@EAP_TLV_ACTION_PROCESS_TLV = common dso_local global i32 0, align 4
@EAP_TLV_PAC_TLV = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @eap_fast_write_pac_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_fast_write_pac_request(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_tlv_hdr*, align 8
  %6 = alloca %struct.eap_tlv_request_action_tlv*, align 8
  %7 = alloca %struct.eap_tlv_pac_type_tlv*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.eap_tlv_request_action_tlv*
  store %struct.eap_tlv_request_action_tlv* %9, %struct.eap_tlv_request_action_tlv** %6, align 8
  %10 = load i32, i32* @EAP_TLV_REQUEST_ACTION_TLV, align 4
  %11 = call i8* @host_to_be16(i32 %10)
  %12 = load %struct.eap_tlv_request_action_tlv*, %struct.eap_tlv_request_action_tlv** %6, align 8
  %13 = getelementptr inbounds %struct.eap_tlv_request_action_tlv, %struct.eap_tlv_request_action_tlv* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = call i8* @host_to_be16(i32 2)
  %15 = load %struct.eap_tlv_request_action_tlv*, %struct.eap_tlv_request_action_tlv** %6, align 8
  %16 = getelementptr inbounds %struct.eap_tlv_request_action_tlv, %struct.eap_tlv_request_action_tlv* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @EAP_TLV_ACTION_PROCESS_TLV, align 4
  %18 = call i8* @host_to_be16(i32 %17)
  %19 = load %struct.eap_tlv_request_action_tlv*, %struct.eap_tlv_request_action_tlv** %6, align 8
  %20 = getelementptr inbounds %struct.eap_tlv_request_action_tlv, %struct.eap_tlv_request_action_tlv* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.eap_tlv_request_action_tlv*, %struct.eap_tlv_request_action_tlv** %6, align 8
  %22 = getelementptr inbounds %struct.eap_tlv_request_action_tlv, %struct.eap_tlv_request_action_tlv* %21, i64 1
  %23 = bitcast %struct.eap_tlv_request_action_tlv* %22 to %struct.eap_tlv_hdr*
  store %struct.eap_tlv_hdr* %23, %struct.eap_tlv_hdr** %5, align 8
  %24 = load i32, i32* @EAP_TLV_PAC_TLV, align 4
  %25 = call i8* @host_to_be16(i32 %24)
  %26 = load %struct.eap_tlv_hdr*, %struct.eap_tlv_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.eap_tlv_hdr, %struct.eap_tlv_hdr* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = call i8* @host_to_be16(i32 24)
  %29 = load %struct.eap_tlv_hdr*, %struct.eap_tlv_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.eap_tlv_hdr, %struct.eap_tlv_hdr* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.eap_tlv_hdr*, %struct.eap_tlv_hdr** %5, align 8
  %32 = getelementptr inbounds %struct.eap_tlv_hdr, %struct.eap_tlv_hdr* %31, i64 1
  %33 = bitcast %struct.eap_tlv_hdr* %32 to %struct.eap_tlv_pac_type_tlv*
  store %struct.eap_tlv_pac_type_tlv* %33, %struct.eap_tlv_pac_type_tlv** %7, align 8
  %34 = load i32, i32* @PAC_TYPE_PAC_TYPE, align 4
  %35 = call i8* @host_to_be16(i32 %34)
  %36 = load %struct.eap_tlv_pac_type_tlv*, %struct.eap_tlv_pac_type_tlv** %7, align 8
  %37 = getelementptr inbounds %struct.eap_tlv_pac_type_tlv, %struct.eap_tlv_pac_type_tlv* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = call i8* @host_to_be16(i32 2)
  %39 = load %struct.eap_tlv_pac_type_tlv*, %struct.eap_tlv_pac_type_tlv** %7, align 8
  %40 = getelementptr inbounds %struct.eap_tlv_pac_type_tlv, %struct.eap_tlv_pac_type_tlv* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i8* @host_to_be16(i32 %41)
  %43 = load %struct.eap_tlv_pac_type_tlv*, %struct.eap_tlv_pac_type_tlv** %7, align 8
  %44 = getelementptr inbounds %struct.eap_tlv_pac_type_tlv, %struct.eap_tlv_pac_type_tlv* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.eap_tlv_pac_type_tlv*, %struct.eap_tlv_pac_type_tlv** %7, align 8
  %46 = getelementptr inbounds %struct.eap_tlv_pac_type_tlv, %struct.eap_tlv_pac_type_tlv* %45, i64 1
  %47 = bitcast %struct.eap_tlv_pac_type_tlv* %46 to i32*
  ret i32* %47
}

declare dso_local i8* @host_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
