; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostapd_wireless_event_wireless_custom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_hostap.c_hostapd_wireless_event_wireless_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostap_driver_data = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Custom wireless event: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"MLME-MICHAELMICFAILURE.indication\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"addr=\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"MLME-MICHAELMICFAILURE.indication without sender address ignored\00", align 1
@EVENT_MICHAEL_MIC_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"MLME-MICHAELMICFAILURE.indication with invalid MAC address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostap_driver_data*, i8*)* @hostapd_wireless_event_wireless_custom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_wireless_event_wireless_custom(%struct.hostap_driver_data* %0, i8* %1) #0 {
  %3 = alloca %struct.hostap_driver_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.wpa_event_data, align 8
  store %struct.hostap_driver_data* %0, %struct.hostap_driver_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strncmp(i8* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 33)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %2
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %49

28:                                               ; preds = %16
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 5
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @hwaddr_aton(i8* %31, i32* %20)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = call i32 @os_memset(%union.wpa_event_data* %9, i32 0, i32 16)
  %36 = bitcast %union.wpa_event_data* %9 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = bitcast %union.wpa_event_data* %9 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32* %20, i32** %39, align 8
  %40 = load %struct.hostap_driver_data*, %struct.hostap_driver_data** %3, align 8
  %41 = getelementptr inbounds %struct.hostap_driver_data, %struct.hostap_driver_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EVENT_MICHAEL_MIC_FAILURE, align 4
  %44 = call i32 @wpa_supplicant_event(i32 %42, i32 %43, %union.wpa_event_data* %9)
  br label %48

45:                                               ; preds = %28
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %34
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %54 [
    i32 0, label %52
    i32 1, label %53
  ]

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %49, %52, %2
  ret void

54:                                               ; preds = %49
  unreachable
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
