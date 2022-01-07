; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_chan_bw_allowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_chan_bw_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_channel_data = type { i32 }

@HOSTAPD_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_WIDTH_40P = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_WIDTH_40M = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_WIDTH_80 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_WIDTH_160 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chan_bw_allowed(%struct.hostapd_channel_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hostapd_channel_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hostapd_channel_data* %0, %struct.hostapd_channel_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %36 [
    i32 20, label %11
    i32 40, label %13
    i32 80, label %32
    i32 160, label %34
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @HOSTAPD_CHAN_WIDTH_20, align 4
  store i32 %12, i32* %9, align 4
  br label %37

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @HOSTAPD_CHAN_WIDTH_40P, align 4
  store i32 %20, i32* %9, align 4
  br label %31

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @HOSTAPD_CHAN_WIDTH_40M, align 4
  store i32 %28, i32* %9, align 4
  br label %30

29:                                               ; preds = %24, %21
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %27
  br label %31

31:                                               ; preds = %30, %19
  br label %37

32:                                               ; preds = %4
  %33 = load i32, i32* @HOSTAPD_CHAN_WIDTH_80, align 4
  store i32 %33, i32* %9, align 4
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @HOSTAPD_CHAN_WIDTH_160, align 4
  store i32 %35, i32* %9, align 4
  br label %37

36:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %34, %32, %31, %11
  %38 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %39 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
