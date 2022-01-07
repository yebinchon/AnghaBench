; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_study.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_study.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.hostapd_channel_data = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ACS: All study options have failed\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ACS: Failed to compute ideal channel\00", align 1
@HOSTAPD_CHAN_VALID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [96 x i8] c"ACS: Possibly channel configuration is invalid, please report this along with your config file.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_iface*)* @acs_study to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acs_study(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_iface*, align 8
  %3 = alloca %struct.hostapd_channel_data*, align 8
  %4 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %2, align 8
  %5 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %6 = call i32 @acs_study_options(%struct.hostapd_iface* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @MSG_ERROR, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %14 = call %struct.hostapd_channel_data* @acs_find_ideal_chan(%struct.hostapd_iface* %13)
  store %struct.hostapd_channel_data* %14, %struct.hostapd_channel_data** %3, align 8
  %15 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %3, align 8
  %16 = icmp ne %struct.hostapd_channel_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %45

20:                                               ; preds = %12
  %21 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %3, align 8
  %22 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %25 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 8
  %28 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %29 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %20
  %35 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %36 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34, %20
  %42 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %43 = call i32 @acs_adjust_center_freq(%struct.hostapd_iface* %42)
  br label %44

44:                                               ; preds = %41, %34
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %17, %9
  %46 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @hostapd_acs_completed(%struct.hostapd_iface* %46, i32 %47)
  %49 = load i64, i64* @HOSTAPD_CHAN_VALID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %53 = call i32 @acs_cleanup(%struct.hostapd_iface* %52)
  br label %59

54:                                               ; preds = %45
  %55 = load i32, i32* @MSG_ERROR, align 4
  %56 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %58 = call i32 @acs_fail(%struct.hostapd_iface* %57)
  br label %59

59:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @acs_study_options(%struct.hostapd_iface*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.hostapd_channel_data* @acs_find_ideal_chan(%struct.hostapd_iface*) #1

declare dso_local i32 @acs_adjust_center_freq(%struct.hostapd_iface*) #1

declare dso_local i64 @hostapd_acs_completed(%struct.hostapd_iface*, i32) #1

declare dso_local i32 @acs_cleanup(%struct.hostapd_iface*) #1

declare dso_local i32 @acs_fail(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
