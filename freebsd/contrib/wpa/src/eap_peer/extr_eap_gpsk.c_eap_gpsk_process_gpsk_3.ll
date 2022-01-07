; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_process_gpsk_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_process_gpsk_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_gpsk_data = type { i64 }
%struct.eap_method_ret = type { i32, i32, i32 }

@GPSK_3 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-GPSK: Received Request/GPSK-3\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"EAP-GPSK: Ignored %lu bytes of extra data in the end of GPSK-2\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_UNCOND_SUCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_gpsk_data*, %struct.eap_method_ret*, i32, i32*, i64)* @eap_gpsk_process_gpsk_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_gpsk_process_gpsk_3(%struct.eap_sm* %0, %struct.eap_gpsk_data* %1, %struct.eap_method_ret* %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_gpsk_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_gpsk_data* %1, %struct.eap_gpsk_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %18 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @GPSK_3, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load i32, i32* @TRUE, align 4
  %24 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %25 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %90

26:                                               ; preds = %6
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %16, align 8
  %32 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = call i32* @eap_gpsk_validate_rand(%struct.eap_gpsk_data* %32, i32* %33, i32* %34)
  store i32* %35, i32** %15, align 8
  %36 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = call i32* @eap_gpsk_validate_id_server(%struct.eap_gpsk_data* %36, i32* %37, i32* %38)
  store i32* %39, i32** %15, align 8
  %40 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i32* @eap_gpsk_validate_csuite(%struct.eap_gpsk_data* %40, i32* %41, i32* %42)
  store i32* %43, i32** %15, align 8
  %44 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = call i32* @eap_gpsk_validate_pd_payload_2(%struct.eap_gpsk_data* %44, i32* %45, i32* %46)
  store i32* %47, i32** %15, align 8
  %48 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = call i32* @eap_gpsk_validate_gpsk_3_mic(%struct.eap_gpsk_data* %48, i32* %49, i32* %50, i32* %51)
  store i32* %52, i32** %15, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %26
  %56 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %57 = load i32, i32* @FAILURE, align 4
  %58 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %56, i32 %57)
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %90

59:                                               ; preds = %26
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = icmp ne i32* %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = load i32*, i32** %16, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %63, %59
  %73 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call %struct.wpabuf* @eap_gpsk_send_gpsk_4(%struct.eap_gpsk_data* %73, i32 %74)
  store %struct.wpabuf* %75, %struct.wpabuf** %14, align 8
  %76 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %77 = icmp eq %struct.wpabuf* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %90

79:                                               ; preds = %72
  %80 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %81 = load i32, i32* @SUCCESS, align 4
  %82 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %80, i32 %81)
  %83 = load i32, i32* @METHOD_DONE, align 4
  %84 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %85 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @DECISION_UNCOND_SUCC, align 4
  %87 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %88 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %89, %struct.wpabuf** %7, align 8
  br label %90

90:                                               ; preds = %79, %78, %55, %22
  %91 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %91
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @eap_gpsk_validate_rand(%struct.eap_gpsk_data*, i32*, i32*) #1

declare dso_local i32* @eap_gpsk_validate_id_server(%struct.eap_gpsk_data*, i32*, i32*) #1

declare dso_local i32* @eap_gpsk_validate_csuite(%struct.eap_gpsk_data*, i32*, i32*) #1

declare dso_local i32* @eap_gpsk_validate_pd_payload_2(%struct.eap_gpsk_data*, i32*, i32*) #1

declare dso_local i32* @eap_gpsk_validate_gpsk_3_mic(%struct.eap_gpsk_data*, i32*, i32*, i32*) #1

declare dso_local i32 @eap_gpsk_state(%struct.eap_gpsk_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_gpsk_send_gpsk_4(%struct.eap_gpsk_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
