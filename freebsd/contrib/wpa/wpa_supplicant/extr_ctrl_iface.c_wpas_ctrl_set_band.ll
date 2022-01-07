; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_set_band.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_set_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@WPA_SETBAND_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"5G\00", align 1
@WPA_SETBAND_5G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"2G\00", align 1
@WPA_SETBAND_2G = common dso_local global i32 0, align 4
@REGDOM_SET_BY_USER = common dso_local global i32 0, align 4
@REGDOM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@EVENT_CHANNEL_LIST_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpas_ctrl_set_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_set_band(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.wpa_event_data, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @os_strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @WPA_SETBAND_AUTO, align 4
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @os_strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @WPA_SETBAND_5G, align 4
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %32

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @os_strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @WPA_SETBAND_2G, align 4
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %31

30:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %52

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %18
  br label %33

33:                                               ; preds = %32, %10
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @wpa_drv_setband(%struct.wpa_supplicant* %34, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = call i32 @os_memset(%union.wpa_event_data* %6, i32 0, i32 8)
  %42 = load i32, i32* @REGDOM_SET_BY_USER, align 4
  %43 = bitcast %union.wpa_event_data* %6 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @REGDOM_TYPE_UNKNOWN, align 4
  %46 = bitcast %union.wpa_event_data* %6 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %49 = load i32, i32* @EVENT_CHANNEL_LIST_CHANGED, align 4
  %50 = call i32 @wpa_supplicant_event(%struct.wpa_supplicant* %48, i32 %49, %union.wpa_event_data* %6)
  br label %51

51:                                               ; preds = %40, %33
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i64 @wpa_drv_setband(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(%struct.wpa_supplicant*, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
