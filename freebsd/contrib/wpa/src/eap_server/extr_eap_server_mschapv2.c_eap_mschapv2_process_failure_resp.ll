; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_process_failure_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_process_failure_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_mschapv2_data = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_mschapv2_hdr = type { i64 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_MSCHAPV2 = common dso_local global i32 0, align 4
@MSCHAPV2_OP_FAILURE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"EAP-MSCHAPV2: Received Failure Response - authentication failed\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"EAP-MSCHAPV2: Did not receive Failure Response - authentication failed\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_mschapv2_data*, %struct.wpabuf*)* @eap_mschapv2_process_failure_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_mschapv2_process_failure_resp(%struct.eap_sm* %0, %struct.eap_mschapv2_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_mschapv2_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_mschapv2_hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_mschapv2_data* %1, %struct.eap_mschapv2_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %10 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %11 = load i32, i32* @EAP_TYPE_MSCHAPV2, align 4
  %12 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %13 = call i32* @eap_hdr_validate(i32 %10, i32 %11, %struct.wpabuf* %12, i64* %9)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  br label %38

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = bitcast i32* %21 to %struct.eap_mschapv2_hdr*
  store %struct.eap_mschapv2_hdr* %22, %struct.eap_mschapv2_hdr** %7, align 8
  %23 = load %struct.eap_mschapv2_hdr*, %struct.eap_mschapv2_hdr** %7, align 8
  %24 = getelementptr inbounds %struct.eap_mschapv2_hdr, %struct.eap_mschapv2_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MSCHAPV2_OP_FAILURE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @FAILURE, align 4
  %36 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %5, align 8
  %37 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %19
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
