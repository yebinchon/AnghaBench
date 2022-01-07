; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_is_usable_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_is_usable_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32 }
%struct.hostapd_channel_data = type { i32 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Channel %d (%s) not allowed for AP mode, flags: 0x%x%s%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"secondary\00", align 1
@HOSTAPD_CHAN_NO_IR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" NO-IR\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c" RADAR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i32, i32)* @hostapd_is_usable_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_is_usable_chan(%struct.hostapd_iface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_iface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %10 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

14:                                               ; preds = %3
  %15 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.hostapd_channel_data* @hw_get_channel_chan(i32 %17, i32 %18, i32* null)
  store %struct.hostapd_channel_data* %19, %struct.hostapd_channel_data** %8, align 8
  %20 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %21 = icmp ne %struct.hostapd_channel_data* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %68

23:                                               ; preds = %14
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %28 = call i64 @chan_pri_allowed(%struct.hostapd_channel_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %35 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33, %26
  store i32 1, i32* %4, align 4
  br label %68

41:                                               ; preds = %33, %30
  %42 = load i32, i32* @MSG_INFO, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %48 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %49 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %52 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HOSTAPD_CHAN_NO_IR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %59 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %8, align 8
  %60 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %67 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %47, i32 %50, i8* %58, i8* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %41, %40, %22, %13
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.hostapd_channel_data* @hw_get_channel_chan(i32, i32, i32*) #1

declare dso_local i64 @chan_pri_allowed(%struct.hostapd_channel_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
