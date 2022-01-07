; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i32* }
%struct.eap_aka_data = type { i32, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i64, i32, i64, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-AKA: Processing Identity\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"EAP-AKA: Unexpected attribute received in EAP-Response/AKA-Identity\00", align 1
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i8* null, align 8
@NOTIFICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"EAP-AKA: Peer did not provide any identity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_aka_process_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_process_identity(%struct.eap_sm* %0, %struct.eap_aka_data* %1, %struct.wpabuf* %2, %struct.eap_sim_attrs* %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sim_attrs*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.eap_sim_attrs* %3, %struct.eap_sim_attrs** %8, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %13 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %18 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %23 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %16, %4
  %27 = load i32, i32* @MSG_WARNING, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %30 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %31 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %33 = load i32, i32* @NOTIFICATION, align 4
  %34 = call i32 @eap_aka_state(%struct.eap_aka_data* %32, i32 %33)
  br label %106

35:                                               ; preds = %21
  %36 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %37 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %42 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %49 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %50 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %52 = load i32, i32* @NOTIFICATION, align 4
  %53 = call i32 @eap_aka_state(%struct.eap_aka_data* %51, i32 %52)
  br label %106

54:                                               ; preds = %40
  %55 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %56 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32* @os_malloc(i64 %57)
  store i32* %58, i32** %9, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %63 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %64 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %66 = load i32, i32* @NOTIFICATION, align 4
  %67 = call i32 @eap_aka_state(%struct.eap_aka_data* %65, i32 %66)
  br label %106

68:                                               ; preds = %54
  %69 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %70 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @os_free(i32* %71)
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %75 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %77 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %80 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %83 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @os_memcpy(i32* %78, i32 %81, i64 %84)
  %86 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %87 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %90 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %92 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %93 = call i32 @eap_aka_determine_identity(%struct.eap_sm* %91, %struct.eap_aka_data* %92)
  %94 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %95 = call i32 @eap_get_id(%struct.wpabuf* %94)
  %96 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %97 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %68
  %101 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %102 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %101, i32 0, i32 0
  store i32 -1, i32* %102, align 8
  %103 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %104 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %105 = call i32 @eap_aka_add_id_msg(%struct.eap_aka_data* %103, %struct.wpabuf* %104)
  br label %106

106:                                              ; preds = %26, %45, %61, %100, %68
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @eap_aka_determine_identity(%struct.eap_sm*, %struct.eap_aka_data*) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @eap_aka_add_id_msg(%struct.eap_aka_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
