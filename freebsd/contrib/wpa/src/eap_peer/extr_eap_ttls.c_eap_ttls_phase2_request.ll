; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32, i64 }
%struct.eap_method_ret = type { i32, i32 }
%struct.eap_hdr = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-TTLS: Identity not configured\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"EAP-TTLS: Password not configured\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"EAP-TTLS: Phase 2 - Unknown\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.eap_hdr*, %struct.wpabuf**)* @eap_ttls_phase2_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_phase2_request(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, %struct.eap_hdr* %3, %struct.wpabuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ttls_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.eap_hdr*, align 8
  %11 = alloca %struct.wpabuf**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.eap_hdr* %3, %struct.eap_hdr** %10, align 8
  store %struct.wpabuf** %4, %struct.wpabuf*** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %16 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp eq i32 %18, 129
  br i1 %19, label %29, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, 130
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %14, align 4
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  %28 = icmp eq i32 %27, 132
  br i1 %28, label %29, label %55

29:                                               ; preds = %26, %23, %20, %5
  %30 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %31 = call i32* @eap_get_config_identity(%struct.eap_sm* %30, i64* %13)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %37 = call i32 @eap_sm_request_identity(%struct.eap_sm* %36)
  %38 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %39 = call i32* @eap_get_config_password(%struct.eap_sm* %38, i64* %13)
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %43 = call i32 @eap_sm_request_password(%struct.eap_sm* %42)
  br label %44

44:                                               ; preds = %41, %33
  store i32 0, i32* %6, align 4
  br label %103

45:                                               ; preds = %29
  %46 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %47 = call i32* @eap_get_config_password(%struct.eap_sm* %46, i64* %13)
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* @MSG_INFO, align 4
  %51 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %53 = call i32 @eap_sm_request_password(%struct.eap_sm* %52)
  store i32 0, i32* %6, align 4
  br label %103

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %26
  %56 = load i32, i32* %14, align 4
  switch i32 %56, label %88 [
    i32 131, label %57
    i32 129, label %64
    i32 130, label %70
    i32 128, label %76
    i32 132, label %82
  ]

57:                                               ; preds = %55
  %58 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %59 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %60 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %61 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %62 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %63 = call i32 @eap_ttls_phase2_request_eap(%struct.eap_sm* %58, %struct.eap_ttls_data* %59, %struct.eap_method_ret* %60, %struct.eap_hdr* %61, %struct.wpabuf** %62)
  store i32 %63, i32* %12, align 4
  br label %91

64:                                               ; preds = %55
  %65 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %66 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %67 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %68 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %69 = call i32 @eap_ttls_phase2_request_mschapv2(%struct.eap_sm* %65, %struct.eap_ttls_data* %66, %struct.eap_method_ret* %67, %struct.wpabuf** %68)
  store i32 %69, i32* %12, align 4
  br label %91

70:                                               ; preds = %55
  %71 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %72 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %73 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %74 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %75 = call i32 @eap_ttls_phase2_request_mschap(%struct.eap_sm* %71, %struct.eap_ttls_data* %72, %struct.eap_method_ret* %73, %struct.wpabuf** %74)
  store i32 %75, i32* %12, align 4
  br label %91

76:                                               ; preds = %55
  %77 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %78 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %79 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %80 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %81 = call i32 @eap_ttls_phase2_request_pap(%struct.eap_sm* %77, %struct.eap_ttls_data* %78, %struct.eap_method_ret* %79, %struct.wpabuf** %80)
  store i32 %81, i32* %12, align 4
  br label %91

82:                                               ; preds = %55
  %83 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %84 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %85 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %86 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %87 = call i32 @eap_ttls_phase2_request_chap(%struct.eap_sm* %83, %struct.eap_ttls_data* %84, %struct.eap_method_ret* %85, %struct.wpabuf** %86)
  store i32 %87, i32* %12, align 4
  br label %91

88:                                               ; preds = %55
  %89 = load i32, i32* @MSG_ERROR, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %91

91:                                               ; preds = %88, %82, %76, %70, %64, %57
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* @METHOD_DONE, align 4
  %96 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %97 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @DECISION_FAIL, align 4
  %99 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %100 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %94, %91
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %49, %44
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_sm_request_identity(%struct.eap_sm*) #1

declare dso_local i32* @eap_get_config_password(%struct.eap_sm*, i64*) #1

declare dso_local i32 @eap_sm_request_password(%struct.eap_sm*) #1

declare dso_local i32 @eap_ttls_phase2_request_eap(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.eap_hdr*, %struct.wpabuf**) #1

declare dso_local i32 @eap_ttls_phase2_request_mschapv2(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.wpabuf**) #1

declare dso_local i32 @eap_ttls_phase2_request_mschap(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.wpabuf**) #1

declare dso_local i32 @eap_ttls_phase2_request_pap(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.wpabuf**) #1

declare dso_local i32 @eap_ttls_phase2_request_chap(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.wpabuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
