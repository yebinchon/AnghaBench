; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_channel_ok_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_channel_ok_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_NO_IR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"DPP: Peer channel %u MHz not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_hw_modes*, i64, i32)* @dpp_channel_ok_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_channel_ok_init(%struct.hostapd_hw_modes* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %12 = icmp ne %struct.hostapd_hw_modes* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  store i32 1, i32* %4, align 4
  br label %78

17:                                               ; preds = %13
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %71, %17
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %67, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %25, i64 %26
  %28 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %23
  %32 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %32, i64 %33
  %35 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %67

46:                                               ; preds = %31
  %47 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %47, i64 %48
  %50 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %59 = load i32, i32* @HOSTAPD_CHAN_NO_IR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %57, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %78

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %23

70:                                               ; preds = %23
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %18

74:                                               ; preds = %18
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @wpa_printf(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %65, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
