; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_scan_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ACS: Using survey based algorithm (acs_num_scans=%d)\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ACS: Failed to get survey data\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ACS: Failed to request scan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_iface*)* @acs_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acs_scan_complete(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_iface*, align 8
  %3 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %2, align 8
  %4 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %5 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %4, i32 0, i32 3
  store i32* null, i32** %5, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %8 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 (i32, i8*, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %14 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @hostapd_drv_get_survey(i32 %17, i32 0)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @MSG_ERROR, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %47

24:                                               ; preds = %1
  %25 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %26 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %30 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %28, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %37 = call i32 @acs_request_scan(%struct.hostapd_iface* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @MSG_ERROR, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %47

43:                                               ; preds = %35
  br label %52

44:                                               ; preds = %24
  %45 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %46 = call i32 @acs_study(%struct.hostapd_iface* %45)
  br label %52

47:                                               ; preds = %40, %21
  %48 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %49 = call i32 @hostapd_acs_completed(%struct.hostapd_iface* %48, i32 1)
  %50 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %51 = call i32 @acs_fail(%struct.hostapd_iface* %50)
  br label %52

52:                                               ; preds = %47, %44, %43
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hostapd_drv_get_survey(i32, i32) #1

declare dso_local i32 @acs_request_scan(%struct.hostapd_iface*) #1

declare dso_local i32 @acs_study(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_acs_completed(%struct.hostapd_iface*, i32) #1

declare dso_local i32 @acs_fail(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
