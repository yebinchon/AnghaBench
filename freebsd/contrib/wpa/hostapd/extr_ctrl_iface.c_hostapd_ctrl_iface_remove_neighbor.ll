; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_remove_neighbor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_remove_neighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.wpa_ssid_value = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CTRL: REMOVE_NEIGHBOR: Bad BSSID\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ssid=\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"CTRL: REMOVE_NEIGHBORr: Bad or missing SSID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*)* @hostapd_ctrl_iface_remove_neighbor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_remove_neighbor(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpa_ssid_value, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @hwaddr_aton(i8* %15, i32* %14)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @MSG_ERROR, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @os_strstr(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  %29 = call i64 @ssid_parse(i8* %28, %struct.wpa_ssid_value* %6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @MSG_ERROR, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %36 = call i32 @hostapd_neighbor_remove(%struct.hostapd_data* %35, i32* %14, %struct.wpa_ssid_value* %6)
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %31, %18
  %38 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i8* @os_strstr(i8*, i8*) #2

declare dso_local i64 @ssid_parse(i8*, %struct.wpa_ssid_value*) #2

declare dso_local i32 @hostapd_neighbor_remove(%struct.hostapd_data*, i32*, %struct.wpa_ssid_value*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
