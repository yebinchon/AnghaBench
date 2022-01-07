; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_notify.c_wpas_notify_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_notify.c_wpas_notify_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.wpa_supplicant*, %struct.TYPE_2__ }
%struct.wpa_supplicant = type { i64, %struct.wpa_supplicant* }
%struct.TYPE_2__ = type { i64 }
%struct.os_time = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"System resume notification (slept %d seconds)\00", align 1
@WPA_DISCONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_notify_resume(%struct.wpa_global* %0) #0 {
  %2 = alloca %struct.wpa_global*, align 8
  %3 = alloca %struct.os_time, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %2, align 8
  %6 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  br label %23

12:                                               ; preds = %1
  %13 = call i32 @os_get_time(%struct.os_time* %3)
  %14 = getelementptr inbounds %struct.os_time, %struct.os_time* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %16, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %12, %11
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.wpa_global*, %struct.wpa_global** %2, align 8
  %28 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %27, i32 0, i32 0
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %28, align 8
  store %struct.wpa_supplicant* %29, %struct.wpa_supplicant** %5, align 8
  br label %30

30:                                               ; preds = %45, %23
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %32 = icmp ne %struct.wpa_supplicant* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %35 = call i32 @wpa_drv_resume(%struct.wpa_supplicant* %34)
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WPA_DISCONNECTED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %43 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %42, i32 0, i32 100000)
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 1
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %47, align 8
  store %struct.wpa_supplicant* %48, %struct.wpa_supplicant** %5, align 8
  br label %30

49:                                               ; preds = %30
  ret void
}

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_drv_resume(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
