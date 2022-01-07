; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_build_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_build_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i64*, i64 }
%struct.eap_sim_data = type { i32 }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EAP-SIM: Generating Start\00", align 1
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@EAP_SIM_SUBTYPE_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"   AT_ANY_ID_REQ\00", align 1
@EAP_SIM_AT_ANY_ID_REQ = common dso_local global i32 0, align 4
@EAP_SIM_REAUTH_ID_PREFIX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"   AT_FULLAUTH_ID_REQ\00", align 1
@EAP_SIM_AT_FULLAUTH_ID_REQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"   AT_PERMANENT_ID_REQ\00", align 1
@EAP_SIM_AT_PERMANENT_ID_REQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"   AT_VERSION_LIST\00", align 1
@EAP_SIM_VERSION = common dso_local global i64 0, align 8
@EAP_SIM_AT_VERSION_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sim_data*, i64)* @eap_sim_build_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_build_start(%struct.eap_sm* %0, %struct.eap_sim_data* %1, i64 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sim_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.eap_sim_msg*, align 8
  %9 = alloca [2 x i64], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @EAP_TYPE_SIM, align 4
  %15 = load i32, i32* @EAP_SIM_SUBTYPE_START, align 4
  %16 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %12, i64 %13, i32 %14, i32 %15)
  store %struct.eap_sim_msg* %16, %struct.eap_sim_msg** %8, align 8
  %17 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %18 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %22 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %29 = load i32, i32* @EAP_SIM_AT_ANY_ID_REQ, align 4
  %30 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %28, i32 %29, i32 0, i64* null, i32 0)
  br label %78

31:                                               ; preds = %3
  %32 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %33 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %38 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %37)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %91

39:                                               ; preds = %31
  %40 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %41 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %76

45:                                               ; preds = %39
  %46 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %47 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %52 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %57 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EAP_SIM_REAUTH_ID_PREFIX, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %67 = load i32, i32* @EAP_SIM_AT_FULLAUTH_ID_REQ, align 4
  %68 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %66, i32 %67, i32 0, i64* null, i32 0)
  br label %75

69:                                               ; preds = %55, %50, %45
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %73 = load i32, i32* @EAP_SIM_AT_PERMANENT_ID_REQ, align 4
  %74 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %72, i32 %73, i32 0, i64* null, i32 0)
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75, %44
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %25
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 @wpa_printf(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %81 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 0, i64* %81, align 16
  %82 = load i64, i64* @EAP_SIM_VERSION, align 8
  %83 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %82, i64* %83, align 8
  %84 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %85 = load i32, i32* @EAP_SIM_AT_VERSION_LIST, align 4
  %86 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %87 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %84, i32 %85, i32 16, i64* %86, i32 16)
  %88 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %89 = load i32, i32* @EAP_TYPE_SIM, align 4
  %90 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %88, i32 %89, i32* null, i32* null, i32 0)
  store %struct.wpabuf* %90, %struct.wpabuf** %4, align 8
  br label %91

91:                                               ; preds = %78, %36
  %92 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %92
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i64, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i64*, i32) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
