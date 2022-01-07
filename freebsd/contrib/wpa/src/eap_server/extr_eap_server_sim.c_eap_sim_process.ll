; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_data = type { i32, i8* }
%struct.eap_sim_attrs = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"EAP-SIM: Unrecognized or unexpected EAP-SIM Subtype in EAP Response\00", align 1
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"EAP-SIM: Failed to parse attributes\00", align 1
@EAP_SIM_SUBTYPE_CLIENT_ERROR = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"EAP-SIM: Unknown state %d in process\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_sim_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_sim_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sim_data*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.eap_sim_attrs, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.eap_sim_data*
  store %struct.eap_sim_data* %14, %struct.eap_sim_data** %7, align 8
  %15 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %16 = load i32, i32* @EAP_TYPE_SIM, align 4
  %17 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %18 = call i64* @eap_hdr_validate(i32 %15, i32 %16, %struct.wpabuf* %17, i64* %11)
  store i64* %18, i64** %8, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %3
  br label %120

25:                                               ; preds = %21
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64* %28, i64** %9, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 3
  store i64* %32, i64** %8, align 8
  %33 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @eap_sim_unexpected_subtype(%struct.eap_sim_data* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %40 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %41 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %42 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %44 = call i32 @eap_sim_state(%struct.eap_sim_data* %43, i32 130)
  br label %120

45:                                               ; preds = %25
  %46 = load i64*, i64** %8, align 8
  %47 = load i64*, i64** %9, align 8
  %48 = call i64 @eap_sim_parse_attr(i64* %46, i64* %47, %struct.eap_sim_attrs* %12, i32 0, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %45
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @EAP_SIM_SUBTYPE_CLIENT_ERROR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %50
  %57 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %58 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 128
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %63 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 131
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %68 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 129
  br i1 %70, label %71, label %77

71:                                               ; preds = %66, %61, %56
  %72 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %73 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %74 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %76 = call i32 @eap_sim_state(%struct.eap_sim_data* %75, i32 130)
  br label %120

77:                                               ; preds = %66, %50
  %78 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %79 = load i32, i32* @FAILURE, align 4
  %80 = call i32 @eap_sim_state(%struct.eap_sim_data* %78, i32 %79)
  br label %120

81:                                               ; preds = %45
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @EAP_SIM_SUBTYPE_CLIENT_ERROR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %87 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %88 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %89 = call i32 @eap_sim_process_client_error(%struct.eap_sm* %86, %struct.eap_sim_data* %87, %struct.wpabuf* %88, %struct.eap_sim_attrs* %12)
  br label %120

90:                                               ; preds = %81
  %91 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %92 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %114 [
    i32 128, label %94
    i32 131, label %99
    i32 129, label %104
    i32 130, label %109
  ]

94:                                               ; preds = %90
  %95 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %96 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %98 = call i32 @eap_sim_process_start(%struct.eap_sm* %95, %struct.eap_sim_data* %96, %struct.wpabuf* %97, %struct.eap_sim_attrs* %12)
  br label %120

99:                                               ; preds = %90
  %100 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %101 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %102 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %103 = call i32 @eap_sim_process_challenge(%struct.eap_sm* %100, %struct.eap_sim_data* %101, %struct.wpabuf* %102, %struct.eap_sim_attrs* %12)
  br label %120

104:                                              ; preds = %90
  %105 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %106 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %107 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %108 = call i32 @eap_sim_process_reauth(%struct.eap_sm* %105, %struct.eap_sim_data* %106, %struct.wpabuf* %107, %struct.eap_sim_attrs* %12)
  br label %120

109:                                              ; preds = %90
  %110 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %111 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %112 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %113 = call i32 @eap_sim_process_notification(%struct.eap_sm* %110, %struct.eap_sim_data* %111, %struct.wpabuf* %112, %struct.eap_sim_attrs* %12)
  br label %120

114:                                              ; preds = %90
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = load %struct.eap_sim_data*, %struct.eap_sim_data** %7, align 8
  %117 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %24, %37, %71, %77, %85, %114, %109, %104, %99, %94
  ret void
}

declare dso_local i64* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i64 @eap_sim_unexpected_subtype(%struct.eap_sim_data*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_sim_state(%struct.eap_sim_data*, i32) #1

declare dso_local i64 @eap_sim_parse_attr(i64*, i64*, %struct.eap_sim_attrs*, i32, i32) #1

declare dso_local i32 @eap_sim_process_client_error(%struct.eap_sm*, %struct.eap_sim_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_sim_process_start(%struct.eap_sm*, %struct.eap_sim_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_sim_process_challenge(%struct.eap_sm*, %struct.eap_sim_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_sim_process_reauth(%struct.eap_sm*, %struct.eap_sim_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_sim_process_notification(%struct.eap_sm*, %struct.eap_sim_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
