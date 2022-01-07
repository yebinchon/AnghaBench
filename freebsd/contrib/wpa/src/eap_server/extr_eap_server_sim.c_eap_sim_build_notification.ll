; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_build_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_sim.c_eap_sim_build_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { i32, i32, i32, i64, i64, i32 }
%struct.eap_sim_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-SIM: Generating Notification\00", align 1
@EAP_CODE_REQUEST = common dso_local global i32 0, align 4
@EAP_TYPE_SIM = common dso_local global i32 0, align 4
@EAP_SIM_SUBTYPE_NOTIFICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"   AT_NOTIFICATION (%d)\00", align 1
@EAP_SIM_AT_NOTIFICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"   AT_IV\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"   AT_ENCR_DATA\00", align 1
@EAP_SIM_AT_IV = common dso_local global i32 0, align 4
@EAP_SIM_AT_ENCR_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"   *AT_COUNTER (%u)\00", align 1
@EAP_SIM_AT_COUNTER = common dso_local global i32 0, align 4
@EAP_SIM_AT_PADDING = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"EAP-SIM: Failed to encrypt AT_ENCR_DATA\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"   AT_MAC\00", align 1
@EAP_SIM_AT_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sim_data*, i32)* @eap_sim_build_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_build_notification(%struct.eap_sm* %0, %struct.eap_sim_data* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_sim_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sim_msg*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EAP_CODE_REQUEST, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @EAP_TYPE_SIM, align 4
  %14 = load i32, i32* @EAP_SIM_SUBTYPE_NOTIFICATION, align 4
  %15 = call %struct.eap_sim_msg* @eap_sim_msg_init(i32 %11, i32 %12, i32 %13, i32 %14)
  store %struct.eap_sim_msg* %15, %struct.eap_sim_msg** %8, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %18 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %22 = load i32, i32* @EAP_SIM_AT_NOTIFICATION, align 4
  %23 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %24 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %21, i32 %22, i32 %25, i32* null, i32 0)
  %27 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %28 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %3
  %32 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %33 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %42 = load i32, i32* @EAP_SIM_AT_IV, align 4
  %43 = load i32, i32* @EAP_SIM_AT_ENCR_DATA, align 4
  %44 = call i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %51 = load i32, i32* @EAP_SIM_AT_COUNTER, align 4
  %52 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %53 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @eap_sim_msg_add(%struct.eap_sim_msg* %50, i32 %51, i32 %54, i32* null, i32 0)
  %56 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %57 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %58 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EAP_SIM_AT_PADDING, align 4
  %61 = call i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg* %56, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %36
  %64 = load i32, i32* @MSG_WARNING, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %66 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %67 = call i32 @eap_sim_msg_free(%struct.eap_sim_msg* %66)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %82

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68, %31
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %72 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %73 = load i32, i32* @EAP_SIM_AT_MAC, align 4
  %74 = call i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %3
  %76 = load %struct.eap_sim_msg*, %struct.eap_sim_msg** %8, align 8
  %77 = load i32, i32* @EAP_TYPE_SIM, align 4
  %78 = load %struct.eap_sim_data*, %struct.eap_sim_data** %6, align 8
  %79 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg* %76, i32 %77, i32 %80, i32* null, i32 0)
  store %struct.wpabuf* %81, %struct.wpabuf** %4, align 8
  br label %82

82:                                               ; preds = %75, %63
  %83 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %83
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.eap_sim_msg* @eap_sim_msg_init(i32, i32, i32, i32) #1

declare dso_local i32 @eap_sim_msg_add(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

declare dso_local i32 @eap_sim_msg_add_encr_start(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i64 @eap_sim_msg_add_encr_end(%struct.eap_sim_msg*, i32, i32) #1

declare dso_local i32 @eap_sim_msg_free(%struct.eap_sim_msg*) #1

declare dso_local i32 @eap_sim_msg_add_mac(%struct.eap_sim_msg*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_msg_finish(%struct.eap_sim_msg*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
