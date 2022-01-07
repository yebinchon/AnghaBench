; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_wpa_driver_nl80211_scan_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_wpa_driver_nl80211_scan_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i64, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"nl80211: Scan timeout - try to abort it\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"nl80211: Failed to abort scan\00", align 1
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"nl80211: Try to get scan results\00", align 1
@EVENT_SCAN_RESULTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_driver_nl80211_scan_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_driver_nl80211_data*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.wpa_driver_nl80211_data*
  store %struct.wpa_driver_nl80211_data* %7, %struct.wpa_driver_nl80211_data** %5, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %16 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @nl80211_abort_scan(i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %46

21:                                               ; preds = %14, %2
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %25 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %34 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @wpa_driver_nl80211_set_mode(i32 %32, i64 %35)
  %37 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %38 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %29, %21
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @EVENT_SCAN_RESULTS, align 4
  %45 = call i32 @wpa_supplicant_event(i8* %43, i32 %44, i32* null)
  br label %46

46:                                               ; preds = %40, %20
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @nl80211_abort_scan(i32) #1

declare dso_local i32 @wpa_driver_nl80211_set_mode(i32, i64) #1

declare dso_local i32 @wpa_supplicant_event(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
