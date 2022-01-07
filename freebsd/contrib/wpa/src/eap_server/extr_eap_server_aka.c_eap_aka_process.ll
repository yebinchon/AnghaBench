; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_aka_data = type { i64, i32, i8* }
%struct.eap_sim_attrs = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"EAP-AKA: Unrecognized or unexpected EAP-AKA Subtype in EAP Response\00", align 1
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i8* null, align 8
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"EAP-AKA: Failed to parse attributes\00", align 1
@EAP_AKA_SUBTYPE_CLIENT_ERROR = common dso_local global i64 0, align 8
@EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT = common dso_local global i64 0, align 8
@EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"EAP-AKA: Unknown state %d in process\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_aka_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_aka_data*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.eap_sim_attrs, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.eap_aka_data*
  store %struct.eap_aka_data* %14, %struct.eap_aka_data** %7, align 8
  %15 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %16 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %17 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %20 = call i64* @eap_hdr_validate(i32 %15, i64 %18, %struct.wpabuf* %19, i64* %11)
  store i64* %20, i64** %8, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %11, align 8
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %3
  br label %125

27:                                               ; preds = %23
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64* %30, i64** %9, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 3
  store i64* %34, i64** %8, align 8
  %35 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @eap_aka_subtype_ok(%struct.eap_aka_data* %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %43 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %44 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %46 = call i32 @eap_aka_state(%struct.eap_aka_data* %45, i32 129)
  br label %125

47:                                               ; preds = %27
  %48 = load i64*, i64** %8, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %51 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 2, i32 1
  %57 = call i64 @eap_sim_parse_attr(i64* %48, i64* %49, %struct.eap_sim_attrs* %12, i32 %56, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %63 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %64 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %66 = call i32 @eap_aka_state(%struct.eap_aka_data* %65, i32 129)
  br label %125

67:                                               ; preds = %47
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @EAP_AKA_SUBTYPE_CLIENT_ERROR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %73 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %74 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %75 = call i32 @eap_aka_process_client_error(%struct.eap_sm* %72, %struct.eap_aka_data* %73, %struct.wpabuf* %74, %struct.eap_sim_attrs* %12)
  br label %125

76:                                               ; preds = %67
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %82 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %83 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %84 = call i32 @eap_aka_process_authentication_reject(%struct.eap_sm* %81, %struct.eap_aka_data* %82, %struct.wpabuf* %83, %struct.eap_sim_attrs* %12)
  br label %125

85:                                               ; preds = %76
  %86 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %87 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %119 [
    i32 130, label %89
    i32 131, label %94
    i32 128, label %109
    i32 129, label %114
  ]

89:                                               ; preds = %85
  %90 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %91 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %92 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %93 = call i32 @eap_aka_process_identity(%struct.eap_sm* %90, %struct.eap_aka_data* %91, %struct.wpabuf* %92, %struct.eap_sim_attrs* %12)
  br label %125

94:                                               ; preds = %85
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %100 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %101 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %102 = call i32 @eap_aka_process_sync_failure(%struct.eap_sm* %99, %struct.eap_aka_data* %100, %struct.wpabuf* %101, %struct.eap_sim_attrs* %12)
  br label %108

103:                                              ; preds = %94
  %104 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %105 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %106 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %107 = call i32 @eap_aka_process_challenge(%struct.eap_sm* %104, %struct.eap_aka_data* %105, %struct.wpabuf* %106, %struct.eap_sim_attrs* %12)
  br label %108

108:                                              ; preds = %103, %98
  br label %125

109:                                              ; preds = %85
  %110 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %111 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %112 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %113 = call i32 @eap_aka_process_reauth(%struct.eap_sm* %110, %struct.eap_aka_data* %111, %struct.wpabuf* %112, %struct.eap_sim_attrs* %12)
  br label %125

114:                                              ; preds = %85
  %115 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %116 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %117 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %118 = call i32 @eap_aka_process_notification(%struct.eap_sm* %115, %struct.eap_aka_data* %116, %struct.wpabuf* %117, %struct.eap_sim_attrs* %12)
  br label %125

119:                                              ; preds = %85
  %120 = load i32, i32* @MSG_DEBUG, align 4
  %121 = load %struct.eap_aka_data*, %struct.eap_aka_data** %7, align 8
  %122 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, ...) @wpa_printf(i32 %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %26, %39, %59, %71, %80, %119, %114, %109, %108, %89
  ret void
}

declare dso_local i64* @eap_hdr_validate(i32, i64, %struct.wpabuf*, i64*) #1

declare dso_local i64 @eap_aka_subtype_ok(%struct.eap_aka_data*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

declare dso_local i64 @eap_sim_parse_attr(i64*, i64*, %struct.eap_sim_attrs*, i32, i32) #1

declare dso_local i32 @eap_aka_process_client_error(%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_aka_process_authentication_reject(%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_aka_process_identity(%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_aka_process_sync_failure(%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_aka_process_challenge(%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_aka_process_reauth(%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_aka_process_notification(%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
