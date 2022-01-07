; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_leap.c_eap_leap_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_leap.c_eap_leap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i8* }
%struct.eap_method_ret = type { i8*, i32, i32, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-LEAP: Password not configured\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"EAP-LEAP: Invalid frame\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"EAP-LEAP: Unexpected EAP code (%d) - ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_leap_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_leap_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %13 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %14 = call i32* @eap_get_config_password(%struct.eap_sm* %13, i64* %11)
  store i32* %14, i32** %12, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %21 = call i32 @eap_sm_request_password(%struct.eap_sm* %20)
  %22 = load i8*, i8** @TRUE, align 8
  %23 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %24 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %92

25:                                               ; preds = %4
  %26 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %27 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %26)
  store %struct.eap_hdr* %27, %struct.eap_hdr** %10, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %29 = call i32 @wpabuf_len(%struct.wpabuf* %28)
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 8
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %34 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be_to_host16(i32 %35)
  %37 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %38 = call i32 @wpabuf_len(%struct.wpabuf* %37)
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32, %25
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %45 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %92

46:                                               ; preds = %32
  %47 = load i8*, i8** @FALSE, align 8
  %48 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %49 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @TRUE, align 8
  %51 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %52 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @METHOD_MAY_CONT, align 4
  %54 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %55 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @DECISION_FAIL, align 4
  %57 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %58 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @FALSE, align 8
  %60 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %61 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %63 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %83 [
    i32 130, label %65
    i32 128, label %71
    i32 129, label %77
  ]

65:                                               ; preds = %46
  %66 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %70 = call %struct.wpabuf* @eap_leap_process_request(%struct.eap_sm* %66, i8* %67, %struct.eap_method_ret* %68, %struct.wpabuf* %69)
  store %struct.wpabuf* %70, %struct.wpabuf** %5, align 8
  br label %92

71:                                               ; preds = %46
  %72 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %75 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %76 = call %struct.wpabuf* @eap_leap_process_success(%struct.eap_sm* %72, i8* %73, %struct.eap_method_ret* %74, %struct.wpabuf* %75)
  store %struct.wpabuf* %76, %struct.wpabuf** %5, align 8
  br label %92

77:                                               ; preds = %46
  %78 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %82 = call %struct.wpabuf* @eap_leap_process_response(%struct.eap_sm* %78, i8* %79, %struct.eap_method_ret* %80, %struct.wpabuf* %81)
  store %struct.wpabuf* %82, %struct.wpabuf** %5, align 8
  br label %92

83:                                               ; preds = %46
  %84 = load i32, i32* @MSG_INFO, align 4
  %85 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %86 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i8*, i8** @TRUE, align 8
  %90 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %91 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %92

92:                                               ; preds = %83, %77, %71, %65, %40, %17
  %93 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %93
}

declare dso_local i32* @eap_get_config_password(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_sm_request_password(%struct.eap_sm*) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @be_to_host16(i32) #1

declare dso_local %struct.wpabuf* @eap_leap_process_request(%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_leap_process_success(%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_leap_process_response(%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
