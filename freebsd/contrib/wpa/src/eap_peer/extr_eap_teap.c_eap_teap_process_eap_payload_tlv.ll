; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_eap_payload_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_eap_payload_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32 }
%struct.eap_method_ret = type { i32 }
%struct.eap_hdr = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EAP-TEAP: too short EAP Payload TLV (len=%lu)\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"EAP-TEAP: EAP packet overflow in EAP Payload TLV\00", align 1
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"EAP-TEAP: Unexpected code=%d in Phase 2 EAP header\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"EAP-TEAP: Phase 2 Request processing failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, i32*, i64)* @eap_teap_process_eap_payload_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_teap_process_eap_payload_tlv(%struct.eap_sm* %0, %struct.eap_teap_data* %1, %struct.eap_method_ret* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_teap_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.eap_hdr*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %13, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i64, i64* %11, align 8
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %18)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %57

20:                                               ; preds = %5
  %21 = load i32*, i32** %10, align 8
  %22 = bitcast i32* %21 to %struct.eap_hdr*
  store %struct.eap_hdr* %22, %struct.eap_hdr** %12, align 8
  %23 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %24 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @be_to_host16(i32 %25)
  %27 = load i64, i64* %11, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %57

32:                                               ; preds = %20
  %33 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %34 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %41 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %57

44:                                               ; preds = %32
  %45 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %46 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %47 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %48 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %49 = call i64 @eap_teap_phase2_request(%struct.eap_sm* %45, %struct.eap_teap_data* %46, %struct.eap_method_ret* %47, %struct.eap_hdr* %48, %struct.wpabuf** %13)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @MSG_INFO, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %57

54:                                               ; preds = %44
  %55 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %56 = call %struct.wpabuf* @eap_teap_tlv_eap_payload(%struct.wpabuf* %55)
  store %struct.wpabuf* %56, %struct.wpabuf** %6, align 8
  br label %57

57:                                               ; preds = %54, %51, %38, %29, %16
  %58 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %58
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i64 @eap_teap_phase2_request(%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, %struct.eap_hdr*, %struct.wpabuf**) #1

declare dso_local %struct.wpabuf* @eap_teap_tlv_eap_payload(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
