; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chaninfo_to_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chaninfo_to_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHANWIDTH_USE_HT = common dso_local global i32 0, align 4
@CHANWIDTH_80MHZ = common dso_local global i32 0, align 4
@CHANWIDTH_80P80MHZ = common dso_local global i32 0, align 4
@CHANWIDTH_160MHZ = common dso_local global i32 0, align 4
@NUM_HOSTAPD_MODES = common dso_local global i64 0, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Cannot determine operating class and channel (freq=%u chanwidth=%d sec_channel=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_chaninfo_to_channel(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 128, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %22 [
    i32 128, label %14
    i32 132, label %14
    i32 133, label %14
    i32 131, label %14
    i32 130, label %16
    i32 129, label %18
    i32 134, label %20
  ]

14:                                               ; preds = %5, %5, %5, %5
  %15 = load i32, i32* @CHANWIDTH_USE_HT, align 4
  store i32 %15, i32* %12, align 4
  br label %22

16:                                               ; preds = %5
  %17 = load i32, i32* @CHANWIDTH_80MHZ, align 4
  store i32 %17, i32* %12, align 4
  br label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @CHANWIDTH_80P80MHZ, align 4
  store i32 %19, i32* %12, align 4
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @CHANWIDTH_160MHZ, align 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %5, %20, %18, %16, %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i64 @ieee80211_freq_to_channel_ext(i32 %23, i32 %24, i32 %25, i32* %26, i32* %27)
  %29 = load i64, i64* @NUM_HOSTAPD_MODES, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* @MSG_WARNING, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  store i32 -1, i32* %6, align 4
  br label %38

37:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @ieee80211_freq_to_channel_ext(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
