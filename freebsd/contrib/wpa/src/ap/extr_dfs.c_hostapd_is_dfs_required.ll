; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_hostapd_is_dfs_required.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_hostapd_is_dfs_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_is_dfs_required(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %9 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %10 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %17 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %22 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %15, %1
  store i32 0, i32* %2, align 4
  br label %59

29:                                               ; preds = %20
  %30 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %31 = call i32 @dfs_get_start_chan_idx(%struct.hostapd_iface* %30, i32* %7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %59

35:                                               ; preds = %29
  %36 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %37 = call i32 @dfs_get_used_n_chans(%struct.hostapd_iface* %36, i32* %5)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dfs_check_chans_radar(%struct.hostapd_iface* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %59

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @dfs_check_chans_radar(%struct.hostapd_iface* %53, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %49, %46
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %44, %34, %28
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @dfs_get_start_chan_idx(%struct.hostapd_iface*, i32*) #1

declare dso_local i32 @dfs_get_used_n_chans(%struct.hostapd_iface*, i32*) #1

declare dso_local i32 @dfs_check_chans_radar(%struct.hostapd_iface*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
