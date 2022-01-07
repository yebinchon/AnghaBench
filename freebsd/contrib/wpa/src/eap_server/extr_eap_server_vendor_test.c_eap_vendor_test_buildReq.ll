; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_vendor_test.c_eap_vendor_test_buildReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_vendor_test.c_eap_vendor_test_buildReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_vendor_test_data = type { i64 }

@EAP_VENDOR_ID = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"EAP-VENDOR-TEST: Failed to allocate memory for request\00", align 1
@INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, i32)* @eap_vendor_test_buildReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_vendor_test_buildReq(%struct.eap_sm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_vendor_test_data*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.eap_vendor_test_data*
  store %struct.eap_vendor_test_data* %11, %struct.eap_vendor_test_data** %8, align 8
  %12 = load i32, i32* @EAP_VENDOR_ID, align 4
  %13 = load i32, i32* @EAP_VENDOR_TYPE, align 4
  %14 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.wpabuf* @eap_msg_alloc(i32 %12, i32 %13, i32 1, i32 %14, i32 %15)
  store %struct.wpabuf* %16, %struct.wpabuf** %9, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %18 = icmp eq %struct.wpabuf* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %33

22:                                               ; preds = %3
  %23 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %24 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %8, align 8
  %25 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INIT, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 3
  %31 = call i32 @wpabuf_put_u8(%struct.wpabuf* %23, i32 %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %32, %struct.wpabuf** %4, align 8
  br label %33

33:                                               ; preds = %22, %19
  %34 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %34
}

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
