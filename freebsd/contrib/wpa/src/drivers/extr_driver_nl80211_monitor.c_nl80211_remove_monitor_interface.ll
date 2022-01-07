; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_monitor.c_nl80211_remove_monitor_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_monitor.c_nl80211_remove_monitor_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i64, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"nl80211: Remove monitor interface: refcount=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_remove_monitor_interface(%struct.wpa_driver_nl80211_data* %0) #0 {
  %2 = alloca %struct.wpa_driver_nl80211_data*, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %2, align 8
  %3 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %9 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %15 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %52

23:                                               ; preds = %12
  %24 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %25 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %30 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %31 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @nl80211_remove_iface(%struct.wpa_driver_nl80211_data* %29, i32 %32)
  %34 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %35 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %34, i32 0, i32 1
  store i32 -1, i32* %35, align 8
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %38 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %43 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @eloop_unregister_read_sock(i32 %44)
  %46 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %47 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %2, align 8
  %51 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %50, i32 0, i32 2
  store i32 -1, i32* %51, align 4
  br label %52

52:                                               ; preds = %22, %41, %36
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @nl80211_remove_iface(%struct.wpa_driver_nl80211_data*, i32) #1

declare dso_local i32 @eloop_unregister_read_sock(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
