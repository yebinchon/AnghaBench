; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i8*, i8*, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_gpsk_data = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_GPSK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"EAP-GPSK: Received frame: opcode %d\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"EAP-GPSK: Ignoring message with unknown opcode %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_gpsk_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_gpsk_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_gpsk_data*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.eap_gpsk_data*
  store %struct.eap_gpsk_data* %17, %struct.eap_gpsk_data** %10, align 8
  %18 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %19 = load i32, i32* @EAP_TYPE_GPSK, align 4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %21 = call i32* @eap_hdr_validate(i32 %18, i32 %19, %struct.wpabuf* %20, i64* %13)
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  %26 = icmp ult i64 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %4
  %28 = load i8*, i8** @TRUE, align 8
  %29 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %30 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %80

31:                                               ; preds = %24
  %32 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %33 = call i32 @eap_get_id(%struct.wpabuf* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %12, align 8
  %36 = load i32, i32* %34, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i64, i64* %13, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %13, align 8
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** @FALSE, align 8
  %43 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %44 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @METHOD_MAY_CONT, align 4
  %46 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %47 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @DECISION_FAIL, align 4
  %49 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %50 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i8*, i8** @FALSE, align 8
  %52 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %53 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %14, align 4
  switch i32 %54, label %71 [
    i32 129, label %55
    i32 128, label %63
  ]

55:                                               ; preds = %31
  %56 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %57 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %10, align 8
  %58 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call %struct.wpabuf* @eap_gpsk_process_gpsk_1(%struct.eap_sm* %56, %struct.eap_gpsk_data* %57, %struct.eap_method_ret* %58, i32 %59, i32* %60, i64 %61)
  store %struct.wpabuf* %62, %struct.wpabuf** %11, align 8
  br label %78

63:                                               ; preds = %31
  %64 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %65 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %10, align 8
  %66 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call %struct.wpabuf* @eap_gpsk_process_gpsk_3(%struct.eap_sm* %64, %struct.eap_gpsk_data* %65, %struct.eap_method_ret* %66, i32 %67, i32* %68, i64 %69)
  store %struct.wpabuf* %70, %struct.wpabuf** %11, align 8
  br label %78

71:                                               ; preds = %31
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @wpa_printf(i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** @TRUE, align 8
  %76 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %77 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %80

78:                                               ; preds = %63, %55
  %79 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %79, %struct.wpabuf** %5, align 8
  br label %80

80:                                               ; preds = %78, %71, %27
  %81 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %81
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local %struct.wpabuf* @eap_gpsk_process_gpsk_1(%struct.eap_sm*, %struct.eap_gpsk_data*, %struct.eap_method_ret*, i32, i32*, i64) #1

declare dso_local %struct.wpabuf* @eap_gpsk_process_gpsk_3(%struct.eap_sm*, %struct.eap_gpsk_data*, %struct.eap_method_ret*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
