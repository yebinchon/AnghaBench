; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_process_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_process_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, i32, i32, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"EAP-FAST: Start (server ver=%d, own ver=%d)\00", align 1
@EAP_TLS_VERSION_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"EAP-FAST: Using FAST version %d\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"EAP-FAST: Trying to resume session - do not add PAC-Opaque to TLS ClientHello\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"EAP-FAST: No PAC found and provisioning disabled\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"EAP-FAST: No PAC found - starting provisioning\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*, i32, i32*, i64)* @eap_fast_process_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_process_start(%struct.eap_sm* %0, %struct.eap_fast_data* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_fast_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @EAP_TLS_VERSION_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %19 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @EAP_TLS_VERSION_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %26 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @EAP_TLS_VERSION_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %34 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %5
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %38 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32* @eap_fast_get_a_id(i32* %41, i64 %42, i64* %13)
  store i32* %43, i32** %12, align 8
  %44 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @eap_fast_select_pac(%struct.eap_fast_data* %44, i32* %45, i64 %46)
  %48 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %49 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %35
  %53 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %54 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %61 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %62 = call i64 @eap_fast_clear_pac_opaque_ext(%struct.eap_sm* %60, %struct.eap_fast_data* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %107

65:                                               ; preds = %57
  br label %106

66:                                               ; preds = %52, %35
  %67 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %68 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %73 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %74 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %75 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @eap_fast_use_pac_opaque(%struct.eap_sm* %72, %struct.eap_fast_data* %73, i64 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 -1, i32* %6, align 4
  br label %107

80:                                               ; preds = %71
  br label %105

81:                                               ; preds = %66
  %82 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %83 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %107

89:                                               ; preds = %81
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %92 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %93 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %94 = call i64 @eap_fast_set_provisioning_ciphers(%struct.eap_sm* %92, %struct.eap_fast_data* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %98 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %99 = call i64 @eap_fast_clear_pac_opaque_ext(%struct.eap_sm* %97, %struct.eap_fast_data* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96, %89
  store i32 -1, i32* %6, align 4
  br label %107

102:                                              ; preds = %96
  %103 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %104 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %80
  br label %106

106:                                              ; preds = %105, %65
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %101, %86, %79, %64
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @eap_fast_get_a_id(i32*, i64, i64*) #1

declare dso_local i32 @eap_fast_select_pac(%struct.eap_fast_data*, i32*, i64) #1

declare dso_local i64 @eap_fast_clear_pac_opaque_ext(%struct.eap_sm*, %struct.eap_fast_data*) #1

declare dso_local i64 @eap_fast_use_pac_opaque(%struct.eap_sm*, %struct.eap_fast_data*, i64) #1

declare dso_local i64 @eap_fast_set_provisioning_ciphers(%struct.eap_sm*, %struct.eap_fast_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
