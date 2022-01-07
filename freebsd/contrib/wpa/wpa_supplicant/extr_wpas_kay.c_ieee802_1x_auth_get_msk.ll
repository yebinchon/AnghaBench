; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_kay.c_ieee802_1x_auth_get_msk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_kay.c_ieee802_1x_auth_get_msk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.eapol_sm* }
%struct.eapol_sm = type { i32 }

@EAP_MSK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to get MSK from EAPOL state machines\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32*, i32*, i64*)* @ieee802_1x_auth_get_msk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_auth_get_msk(%struct.wpa_supplicant* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.eapol_sm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i32, i32* @EAP_MSK_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load %struct.eapol_sm*, %struct.eapol_sm** %21, align 8
  store %struct.eapol_sm* %22, %struct.eapol_sm** %13, align 8
  %23 = load %struct.eapol_sm*, %struct.eapol_sm** %13, align 8
  %24 = icmp eq %struct.eapol_sm* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %51

26:                                               ; preds = %4
  %27 = load i32, i32* @EAP_MSK_LEN, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %12, align 8
  %29 = load %struct.eapol_sm*, %struct.eapol_sm** %13, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @eapol_sm_get_key(%struct.eapol_sm* %29, i32* %19, i64 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %51

37:                                               ; preds = %26
  %38 = load i64, i64* %12, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @os_memcpy(i32* %46, i32* %19, i64 %47)
  %49 = load i64, i64* %12, align 8
  %50 = load i64*, i64** %9, align 8
  store i64 %49, i64* %50, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %51

51:                                               ; preds = %45, %34, %25
  %52 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @eapol_sm_get_key(%struct.eapol_sm*, i32*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
