; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_process_notification_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_process_notification_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sim_data = type { i64, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i32* }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"EAP-SIM: no AT_MAC in after_auth Notification message\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"EAP-SIM: Notification message used invalid AT_MAC\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"EAP-SIM: Invalid notification message after reauth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sim_data*, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_sim_process_notification_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_sim_process_notification_auth(%struct.eap_sim_data* %0, %struct.wpabuf* %1, %struct.eap_sim_attrs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sim_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sim_attrs*, align 8
  store %struct.eap_sim_data* %0, %struct.eap_sim_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.eap_sim_attrs* %2, %struct.eap_sim_attrs** %7, align 8
  %8 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %7, align 8
  %9 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @MSG_INFO, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %17 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %20 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %7, align 8
  %21 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @eap_sim_verify_mac(i32 %18, %struct.wpabuf* %19, i32* %22, i32* bitcast ([1 x i8]* @.str.1 to i32*), i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @MSG_WARNING, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %42

28:                                               ; preds = %15
  %29 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %30 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.eap_sim_data*, %struct.eap_sim_data** %5, align 8
  %35 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %7, align 8
  %36 = call i64 @eap_sim_process_notification_reauth(%struct.eap_sim_data* %34, %struct.eap_sim_attrs* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @MSG_WARNING, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %42

41:                                               ; preds = %33, %28
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38, %25, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eap_sim_verify_mac(i32, %struct.wpabuf*, i32*, i32*, i32) #1

declare dso_local i64 @eap_sim_process_notification_reauth(%struct.eap_sim_data*, %struct.eap_sim_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
