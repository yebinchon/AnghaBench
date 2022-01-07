; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_aka.c_eap_aka_process_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i64, i64 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"EAP-AKA: Client replied to notification\00", align 1
@EAP_SIM_SUCCESS = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_aka_data*, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_aka_process_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_aka_process_notification(%struct.eap_sm* %0, %struct.eap_aka_data* %1, %struct.wpabuf* %2, %struct.eap_sim_attrs* %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_aka_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sim_attrs*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store %struct.eap_sim_attrs* %3, %struct.eap_sim_attrs** %8, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %12 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EAP_SIM_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %18 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %23 = load i32, i32* @SUCCESS, align 4
  %24 = call i32 @eap_aka_state(%struct.eap_aka_data* %22, i32 %23)
  br label %29

25:                                               ; preds = %16, %4
  %26 = load %struct.eap_aka_data*, %struct.eap_aka_data** %6, align 8
  %27 = load i32, i32* @FAILURE, align 4
  %28 = call i32 @eap_aka_state(%struct.eap_aka_data* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
