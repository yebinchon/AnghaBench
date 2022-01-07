; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_build_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_build_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i64*, i64 }
%struct.eap_aka_data = type { i32, i32, i32 }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-AKA: Generating Identity\00", align 1
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_AKA_SUBTYPE_IDENTITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"   AT_ANY_ID_REQ\00", align 1
@EAP_SIM_AT_ANY_ID_REQ = common dso_local global i32 0, align 4
@EAP_AKA_REAUTH_ID_PREFIX = common dso_local global i64 0, align 8
@EAP_AKA_PRIME_REAUTH_ID_PREFIX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"   AT_FULLAUTH_ID_REQ\00", align 1
@EAP_SIM_AT_FULLAUTH_ID_REQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"   AT_PERMANENT_ID_REQ\00", align 1
@EAP_SIM_AT_PERMANENT_ID_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_aka_data*, i32)* @eap_aka_build_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_build_identity(%struct.eap_sm* %0, %struct.eap_aka_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sim_msg*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %15 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EAP_AKA_SUBTYPE_IDENTITY, align 4
  %18 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %12, i32 %13, i32 %16, i32 %17)
  store %struct.eap_sim_msg* %18, %struct.eap_sim_msg** %8, align 8
  %19 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %20 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %24 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %31 = load i32, i32* @EAP_SIM_AT_ANY_ID_REQ, align 4
  %32 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %30, i32 %31, i32 0, i32* null, i32 0)
  br label %81

33:                                               ; preds = %3
  %34 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %35 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %40 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %39)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %99

41:                                               ; preds = %33
  %42 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %43 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %73

46:                                               ; preds = %41
  %47 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %48 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %46
  %52 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %53 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @EAP_AKA_REAUTH_ID_PREFIX, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %61 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EAP_AKA_PRIME_REAUTH_ID_PREFIX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59, %51
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %71 = load i32, i32* @EAP_SIM_AT_FULLAUTH_ID_REQ, align 4
  %72 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %70, i32 %71, i32 0, i32* null, i32 0)
  br label %79

73:                                               ; preds = %59, %46, %41
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = call i32 @wpa_printf(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %77 = load i32, i32* @EAP_SIM_AT_PERMANENT_ID_REQ, align 4
  %78 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %76, i32 %77, i32 0, i32* null, i32 0)
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80, %27
  %82 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %83 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %84 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %82, i32 %85, i32* null, i32* null, i32 0)
  store %struct.wpabuf* %86, %struct.wpabuf** %9, align 8
  %87 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %88 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %89 = call i64 @eap_aka_add_id_msg(%struct.eap_aka_data* %87, %struct.wpabuf* %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %93 = call i32 @wpabuf_free(%struct.wpabuf* %92)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %99

94:                                               ; preds = %81
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %97 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  store %struct.wpabuf* %98, %struct.wpabuf** %4, align 8
  br label %99

99:                                               ; preds = %94, %91, %38
  %100 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %100
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32*, i32*, i32) #1

declare dso_local i64 @eap_aka_add_id_msg(%struct.eap_aka_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
