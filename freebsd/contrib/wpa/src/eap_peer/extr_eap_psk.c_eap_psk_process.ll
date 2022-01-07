; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_psk.c_eap_psk_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_psk.c_eap_psk_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i64, i8*, i8*, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_psk_data = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_PSK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i64 0, align 8
@DECISION_FAIL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"EAP-PSK: in DONE state - ignore unexpected message\00", align 1
@METHOD_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_psk_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_psk_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_psk_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.eap_psk_data*
  store %struct.eap_psk_data* %15, %struct.eap_psk_data** %10, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %12, align 8
  %16 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %17 = load i32, i32* @EAP_TYPE_PSK, align 4
  %18 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %19 = call i32* @eap_hdr_validate(i32 %16, i32 %17, %struct.wpabuf* %18, i64* %13)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i8*, i8** @TRUE, align 8
  %24 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %25 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %70

26:                                               ; preds = %4
  %27 = load i8*, i8** @FALSE, align 8
  %28 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %29 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* @METHOD_MAY_CONT, align 8
  %31 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %32 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @DECISION_FAIL, align 4
  %34 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %35 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** @TRUE, align 8
  %37 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %38 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.eap_psk_data*, %struct.eap_psk_data** %10, align 8
  %40 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %58 [
    i32 129, label %42
    i32 128, label %47
    i32 130, label %52
  ]

42:                                               ; preds = %26
  %43 = load %struct.eap_psk_data*, %struct.eap_psk_data** %10, align 8
  %44 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %46 = call %struct.wpabuf* @eap_psk_process_1(%struct.eap_psk_data* %43, %struct.eap_method_ret* %44, %struct.wpabuf* %45)
  store %struct.wpabuf* %46, %struct.wpabuf** %12, align 8
  br label %58

47:                                               ; preds = %26
  %48 = load %struct.eap_psk_data*, %struct.eap_psk_data** %10, align 8
  %49 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %50 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %51 = call %struct.wpabuf* @eap_psk_process_3(%struct.eap_psk_data* %48, %struct.eap_method_ret* %49, %struct.wpabuf* %50)
  store %struct.wpabuf* %51, %struct.wpabuf** %12, align 8
  br label %58

52:                                               ; preds = %26
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 @wpa_printf(i32 %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %55 = load i8*, i8** @TRUE, align 8
  %56 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %57 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %70

58:                                               ; preds = %26, %47, %42
  %59 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %60 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @METHOD_DONE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i8*, i8** @FALSE, align 8
  %66 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %67 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %69, %struct.wpabuf** %5, align 8
  br label %70

70:                                               ; preds = %68, %52, %22
  %71 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %71
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local %struct.wpabuf* @eap_psk_process_1(%struct.eap_psk_data*, %struct.eap_method_ret*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_psk_process_3(%struct.eap_psk_data*, %struct.eap_method_ret*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
