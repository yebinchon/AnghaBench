; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_eapol_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_eapol_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*)* @hostapd_ctrl_iface_eapol_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_eapol_set(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @hwaddr_aton(i8* %17, i32* %15)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 17
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 32
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

27:                                               ; preds = %20
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 18
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @os_strchr(i8* %31, i8 signext 32)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

36:                                               ; preds = %27
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  store i8 0, i8* %37, align 1
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %40 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %39, i32* %15)
  store %struct.sta_info* %40, %struct.sta_info** %8, align 8
  %41 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %42 = icmp ne %struct.sta_info* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %36
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @eapol_auth_set_conf(i32 %52, i8* %53, i8* %54)
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %56

56:                                               ; preds = %49, %48, %35, %26
  %57 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i8* @os_strchr(i8*, i8 signext) #2

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #2

declare dso_local i32 @eapol_auth_set_conf(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
