; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_build_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_build_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, i64, i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_FAST = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EAP-FAST: Failed to allocate memory for request\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@EAP_TLS_FLAGS_START = common dso_local global i32 0, align 4
@PAC_TYPE_A_ID = common dso_local global i32 0, align 4
@PHASE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_fast_data*, i32)* @eap_fast_build_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_fast_build_start(%struct.eap_sm* %0, %struct.eap_fast_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_fast_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %10 = load i32, i32* @EAP_TYPE_FAST, align 4
  %11 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %12 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 5, %13
  %15 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.wpabuf* @eap_msg_alloc(i32 %9, i32 %10, i64 %14, i32 %15, i32 %16)
  store %struct.wpabuf* %17, %struct.wpabuf** %8, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %19 = icmp eq %struct.wpabuf* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %24 = load i32, i32* @FAILURE, align 4
  %25 = call i32 @eap_fast_state(%struct.eap_fast_data* %23, i32 %24)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %47

26:                                               ; preds = %3
  %27 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %28 = load i32, i32* @EAP_TLS_FLAGS_START, align 4
  %29 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %30 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %28, %31
  %33 = call i32 @wpabuf_put_u8(%struct.wpabuf* %27, i32 %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %35 = load i32, i32* @PAC_TYPE_A_ID, align 4
  %36 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %37 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %40 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @eap_fast_put_tlv(%struct.wpabuf* %34, i32 %35, i32 %38, i64 %41)
  %43 = load %struct.eap_fast_data*, %struct.eap_fast_data** %6, align 8
  %44 = load i32, i32* @PHASE1, align 4
  %45 = call i32 @eap_fast_state(%struct.eap_fast_data* %43, i32 %44)
  %46 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %46, %struct.wpabuf** %4, align 8
  br label %47

47:                                               ; preds = %26, %20
  %48 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %48
}

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_fast_state(%struct.eap_fast_data*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @eap_fast_put_tlv(%struct.wpabuf*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
