; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process_sync_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process_sync_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i32, i8*, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"EAP-AKA: Processing Synchronization-Failure\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"EAP-AKA: Synchronization-Failure message did not include valid AT_AUTS\00", align 1
@EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH = common dso_local global i8* null, align 8
@NOTIFICATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"EAP-AKA: Resynchronization failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_aka_process_sync_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_process_sync_failure(%struct.eap_sm* %0, %struct.eap_aka_data* %1, %struct.wpabuf* %2, %struct.eap_sim_attrs* %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sim_attrs*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.eap_sim_attrs* %3, %struct.eap_sim_attrs** %8, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %12 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i32, i32* @MSG_WARNING, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %19 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %20 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %22 = load i32, i32* @NOTIFICATION, align 4
  %23 = call i32 @eap_aka_state(%struct.eap_aka_data* %21, i32 %22)
  br label %59

24:                                               ; preds = %4
  %25 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %26 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %24
  %30 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %31 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %34 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %8, align 8
  %37 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %40 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @eap_sim_db_resynchronize(i32 %32, i32 %35, i32* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %29
  %45 = load i32, i32* @MSG_WARNING, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i8*, i8** @EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH, align 8
  %48 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %49 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %51 = load i32, i32* @NOTIFICATION, align 4
  %52 = call i32 @eap_aka_state(%struct.eap_aka_data* %50, i32 %51)
  br label %59

53:                                               ; preds = %29, %24
  %54 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %57 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %58 = call i32 @eap_aka_fullauth(%struct.eap_sm* %56, %struct.eap_aka_data* %57)
  br label %59

59:                                               ; preds = %53, %44, %15
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

declare dso_local i64 @eap_sim_db_resynchronize(i32, i32, i32*, i32) #1

declare dso_local i32 @eap_aka_fullauth(%struct.eap_sm*, %struct.eap_aka_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
