; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_vendor_test.c_eap_vendor_test_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_vendor_test.c_eap_vendor_test_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_vendor_test_data = type { i64 }

@EAP_VENDOR_ID = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE = common dso_local global i32 0, align 4
@INIT = common dso_local global i64 0, align 8
@CONFIRM = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_vendor_test_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_vendor_test_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_vendor_test_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.eap_vendor_test_data*
  store %struct.eap_vendor_test_data* %11, %struct.eap_vendor_test_data** %7, align 8
  %12 = load i32, i32* @EAP_VENDOR_ID, align 4
  %13 = load i32, i32* @EAP_VENDOR_TYPE, align 4
  %14 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %15 = call i32* @eap_hdr_validate(i32 %12, i32 %13, %struct.wpabuf* %14, i64* %9)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %3
  br label %65

22:                                               ; preds = %18
  %23 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %7, align 8
  %24 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INIT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %7, align 8
  %34 = load i64, i64* @CONFIRM, align 8
  %35 = call i32 @eap_vendor_test_state(%struct.eap_vendor_test_data* %33, i64 %34)
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %7, align 8
  %38 = load i64, i64* @FAILURE, align 8
  %39 = call i32 @eap_vendor_test_state(%struct.eap_vendor_test_data* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %65

41:                                               ; preds = %22
  %42 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %7, align 8
  %43 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CONFIRM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %7, align 8
  %53 = load i64, i64* @SUCCESS, align 8
  %54 = call i32 @eap_vendor_test_state(%struct.eap_vendor_test_data* %52, i64 %53)
  br label %59

55:                                               ; preds = %47
  %56 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %7, align 8
  %57 = load i64, i64* @FAILURE, align 8
  %58 = call i32 @eap_vendor_test_state(%struct.eap_vendor_test_data* %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %51
  br label %64

60:                                               ; preds = %41
  %61 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %7, align 8
  %62 = load i64, i64* @FAILURE, align 8
  %63 = call i32 @eap_vendor_test_state(%struct.eap_vendor_test_data* %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %59
  br label %65

65:                                               ; preds = %21, %64, %40
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @eap_vendor_test_state(%struct.eap_vendor_test_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
