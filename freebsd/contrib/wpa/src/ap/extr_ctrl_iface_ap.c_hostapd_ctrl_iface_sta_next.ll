; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ctrl_iface_ap.c_hostapd_ctrl_iface_sta_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ctrl_iface_ap.c_hostapd_ctrl_iface_sta_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_ctrl_iface_sta_next(%struct.hostapd_data* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sta_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @hwaddr_aton(i8* %19, i32* %18)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %24 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %23, i32* %18)
  store %struct.sta_info* %24, %struct.sta_info** %12, align 8
  %25 = icmp eq %struct.sta_info* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %22, %4
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @os_snprintf(i8* %27, i64 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %13, align 4
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i64 @os_snprintf_error(i64 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %51

35:                                               ; preds = %26
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %51

37:                                               ; preds = %22
  %38 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %51

43:                                               ; preds = %37
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %45 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @hostapd_ctrl_iface_sta_mib(%struct.hostapd_data* %44, i32 %47, i8* %48, i64 %49)
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %51

51:                                               ; preds = %43, %42, %35, %34
  %52 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #2

declare dso_local i32 @os_snprintf(i8*, i64, i8*) #2

declare dso_local i64 @os_snprintf_error(i64, i32) #2

declare dso_local i32 @hostapd_ctrl_iface_sta_mib(%struct.hostapd_data*, i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
