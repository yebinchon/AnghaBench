; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process_notification_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process_notification_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_aka_data = type { i64, i32 }
%struct.eap_sim_attrs = type { i64, i32*, i32, i32* }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"EAP-AKA: Notification message after reauth did not include encrypted data\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"EAP-AKA: Failed to parse encrypted data from notification message\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"EAP-AKA: Counter in notification message does not match with counter in reauth message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_aka_data*, %struct.eap_sim_attrs*)* @eap_aka_process_notification_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_aka_process_notification_reauth(%struct.eap_aka_data* %0, %struct.eap_sim_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_aka_data*, align 8
  %5 = alloca %struct.eap_sim_attrs*, align 8
  %6 = alloca %struct.eap_sim_attrs, align 8
  %7 = alloca i32*, align 8
  store %struct.eap_aka_data* %0, %struct.eap_aka_data** %4, align 8
  store %struct.eap_sim_attrs* %1, %struct.eap_sim_attrs** %5, align 8
  %8 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %5, align 8
  %9 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %5, align 8
  %14 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @MSG_WARNING, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

20:                                               ; preds = %12
  %21 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %22 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %5, align 8
  %25 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %5, align 8
  %28 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %5, align 8
  %31 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32* @eap_sim_parse_encr(i32 %23, i32* %26, i32 %29, i32* %32, %struct.eap_sim_attrs* %6, i32 0)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32, i32* @MSG_WARNING, align 4
  %38 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %6, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.eap_aka_data*, %struct.eap_aka_data** %4, align 8
  %47 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43, %39
  %51 = load i32, i32* @MSG_WARNING, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @os_free(i32* %53)
  store i32 -1, i32* %3, align 4
  br label %58

55:                                               ; preds = %43
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @os_free(i32* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %50, %36, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @eap_sim_parse_encr(i32, i32*, i32, i32*, %struct.eap_sim_attrs*, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
