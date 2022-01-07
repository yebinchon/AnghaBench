; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ctrl_iface_ap.c_hostapd_ctrl_iface_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ctrl_iface_ap.c_hostapd_ctrl_iface_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_ctrl_iface_sta(%struct.hostapd_data* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sta_info*, align 8
  %15 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @hwaddr_aton(i8* %20, i32* %19)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @os_snprintf(i8* %24, i64 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %12, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @os_snprintf_error(i64 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %68

32:                                               ; preds = %23
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %68

34:                                               ; preds = %4
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %36 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %35, i32* %19)
  store %struct.sta_info* %36, %struct.sta_info** %14, align 8
  %37 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %38 = icmp eq %struct.sta_info* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %68

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @os_strchr(i8* %41, i8 signext 32)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %13, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %13, align 8
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %68

48:                                               ; preds = %40
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %50 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @hostapd_ctrl_iface_sta_mib(%struct.hostapd_data* %49, %struct.sta_info* %50, i8* %51, i64 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %58, %60
  %62 = call i64 @fst_ctrl_iface_mb_info(i32* %19, i8* %57, i64 %61)
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %68

68:                                               ; preds = %48, %45, %39, %32, %31
  %69 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i32 @os_snprintf(i8*, i64, i8*) #2

declare dso_local i64 @os_snprintf_error(i64, i32) #2

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #2

declare dso_local i8* @os_strchr(i8*, i8 signext) #2

declare dso_local i32 @hostapd_ctrl_iface_sta_mib(%struct.hostapd_data*, %struct.sta_info*, i8*, i64) #2

declare dso_local i64 @fst_ctrl_iface_mb_info(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
