; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_kay.c_ieee802_1x_create_preshared_mka.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_kay.c_ieee802_1x_create_preshared_mka.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_ssid = type { i32, i32, i32, i32, i32 }
%struct.mka_key = type { i32, i32, i32 }
%struct.mka_key_name = type { i32, i32, i32 }

@MKA_PSK_SET = common dso_local global i32 0, align 4
@DO_NOT_SECURE = common dso_local global i64 0, align 8
@PSK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ieee802_1x_create_preshared_mka(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.mka_key*, align 8
  %6 = alloca %struct.mka_key_name*, align 8
  %7 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MKA_PSK_SET, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @MKA_PSK_SET, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %101

16:                                               ; preds = %2
  %17 = call %struct.mka_key_name* @os_zalloc(i32 12)
  store %struct.mka_key_name* %17, %struct.mka_key_name** %6, align 8
  %18 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %19 = icmp ne %struct.mka_key_name* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %101

21:                                               ; preds = %16
  %22 = call %struct.mka_key_name* @os_zalloc(i32 12)
  %23 = bitcast %struct.mka_key_name* %22 to %struct.mka_key*
  store %struct.mka_key* %23, %struct.mka_key** %5, align 8
  %24 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %25 = icmp ne %struct.mka_key* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %98

27:                                               ; preds = %21
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %30 = call i64 @ieee802_1x_alloc_kay_sm(%struct.wpa_supplicant* %28, %struct.wpa_ssid* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %27
  br label %94

38:                                               ; preds = %32
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DO_NOT_SECURE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %91

47:                                               ; preds = %38
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %49 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %52 = getelementptr inbounds %struct.mka_key, %struct.mka_key* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %54 = getelementptr inbounds %struct.mka_key, %struct.mka_key* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %57 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %60 = getelementptr inbounds %struct.mka_key, %struct.mka_key* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @os_memcpy(i32 %55, i32 %58, i32 %61)
  %63 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %64 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %67 = getelementptr inbounds %struct.mka_key_name, %struct.mka_key_name* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %69 = getelementptr inbounds %struct.mka_key_name, %struct.mka_key_name* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %72 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %75 = getelementptr inbounds %struct.mka_key_name, %struct.mka_key_name* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @os_memcpy(i32 %70, i32 %73, i32 %76)
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %82 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %83 = bitcast %struct.mka_key* %82 to %struct.mka_key_name*
  %84 = load i32, i32* @PSK, align 4
  %85 = load i32, i32* @FALSE, align 4
  %86 = call i8* @ieee802_1x_kay_create_mka(%struct.TYPE_2__* %80, %struct.mka_key_name* %81, %struct.mka_key_name* %83, i32 0, i32 %84, i32 %85)
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %47
  br label %94

90:                                               ; preds = %47
  br label %91

91:                                               ; preds = %90, %46
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %93 = call i32 @ieee802_1x_dealloc_kay_sm(%struct.wpa_supplicant* %92)
  br label %94

94:                                               ; preds = %91, %89, %37
  %95 = load %struct.mka_key*, %struct.mka_key** %5, align 8
  %96 = bitcast %struct.mka_key* %95 to %struct.mka_key_name*
  %97 = call i32 @os_free(%struct.mka_key_name* %96)
  br label %98

98:                                               ; preds = %94, %26
  %99 = load %struct.mka_key_name*, %struct.mka_key_name** %6, align 8
  %100 = call i32 @os_free(%struct.mka_key_name* %99)
  br label %101

101:                                              ; preds = %98, %20, %15
  %102 = load i8*, i8** %7, align 8
  ret i8* %102
}

declare dso_local %struct.mka_key_name* @os_zalloc(i32) #1

declare dso_local i64 @ieee802_1x_alloc_kay_sm(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i8* @ieee802_1x_kay_create_mka(%struct.TYPE_2__*, %struct.mka_key_name*, %struct.mka_key_name*, i32, i32, i32) #1

declare dso_local i32 @ieee802_1x_dealloc_kay_sm(%struct.wpa_supplicant*) #1

declare dso_local i32 @os_free(%struct.mka_key_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
