; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_set_dfs_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_set_dfs_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i64 }

@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"current_mode != IEEE80211A\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DFS chan_width %d not supported\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"DFS freq: %dMHz, n_chans: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i32, i32, i32, i32, i32, i32, i32)* @set_dfs_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_dfs_state(%struct.hostapd_iface* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_iface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.hostapd_hw_modes*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %24 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %25 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %24, i32 0, i32 0
  %26 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %25, align 8
  store %struct.hostapd_hw_modes* %26, %struct.hostapd_hw_modes** %20, align 8
  %27 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %20, align 8
  %28 = icmp eq %struct.hostapd_hw_modes* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %85

30:                                               ; preds = %8
  %31 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %20, align 8
  %32 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @MSG_WARNING, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %85

39:                                               ; preds = %30
  %40 = load i32, i32* %14, align 4
  switch i32 %40, label %56 [
    i32 130, label %41
    i32 131, label %41
    i32 129, label %47
    i32 128, label %50
    i32 132, label %53
  ]

41:                                               ; preds = %39, %39
  store i32 1, i32* %18, align 4
  %42 = load i32, i32* %21, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %21, align 4
  br label %46

46:                                               ; preds = %44, %41
  br label %60

47:                                               ; preds = %39
  store i32 2, i32* %18, align 4
  %48 = load i32, i32* %15, align 4
  %49 = sub nsw i32 %48, 10
  store i32 %49, i32* %21, align 4
  br label %60

50:                                               ; preds = %39
  store i32 4, i32* %18, align 4
  %51 = load i32, i32* %15, align 4
  %52 = sub nsw i32 %51, 30
  store i32 %52, i32* %21, align 4
  br label %60

53:                                               ; preds = %39
  store i32 8, i32* %18, align 4
  %54 = load i32, i32* %15, align 4
  %55 = sub nsw i32 %54, 70
  store i32 %55, i32* %21, align 4
  br label %60

56:                                               ; preds = %39
  %57 = load i32, i32* @MSG_INFO, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %53, %50, %47, %46
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %18, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63)
  store i32 0, i32* %19, align 4
  br label %65

65:                                               ; preds = %80, %60
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i64 @set_dfs_state_freq(%struct.hostapd_iface* %70, i32 %71, i32 %72)
  %74 = load i32, i32* %22, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, 20
  store i32 %79, i32* %21, align 4
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load i32, i32* %22, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %36, %29
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @set_dfs_state_freq(%struct.hostapd_iface*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
