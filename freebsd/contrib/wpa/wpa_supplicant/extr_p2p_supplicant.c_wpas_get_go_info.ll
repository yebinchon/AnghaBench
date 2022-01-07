; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_go_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_go_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.wpa_ssid* }
%struct.wpa_ssid = type { i64, i32, i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64*, i32*, i32*)* @wpas_get_go_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_get_go_info(i8* %0, i32* %1, i32* %2, i64* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.wpa_supplicant*, align 8
  %15 = alloca %struct.wpa_supplicant*, align 8
  %16 = alloca %struct.wpa_ssid*, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %18, %struct.wpa_supplicant** %14, align 8
  %19 = load i32*, i32** %12, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %13, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32*, i32** %13, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %6
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %14, align 8
  %26 = call %struct.wpa_supplicant* @wpas_p2p_get_go_group(%struct.wpa_supplicant* %25)
  store %struct.wpa_supplicant* %26, %struct.wpa_supplicant** %15, align 8
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %28 = icmp ne %struct.wpa_supplicant* %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %24
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %14, align 8
  %31 = call %struct.wpa_ssid* @wpas_p2p_get_persistent_go(%struct.wpa_supplicant* %30)
  store %struct.wpa_ssid* %31, %struct.wpa_ssid** %16, align 8
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %14, align 8
  %33 = call i32 @wpas_p2p_create_iface(%struct.wpa_supplicant* %32)
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %36 = icmp ne %struct.wpa_ssid* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %40 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @ETH_ALEN, align 8
  %43 = call i32 @os_memcpy(i32* %38, i32 %41, i64 %42)
  br label %45

44:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %77

45:                                               ; preds = %37
  br label %64

46:                                               ; preds = %24
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 2
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %48, align 8
  store %struct.wpa_ssid* %49, %struct.wpa_ssid** %16, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* @ETH_ALEN, align 8
  %55 = call i32 @os_memcpy(i32* %50, i32 %53, i64 %54)
  %56 = load i32*, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %15, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %46
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i32*, i32** %10, align 8
  %66 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %67 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %70 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @os_memcpy(i32* %65, i32 %68, i64 %71)
  %73 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  %74 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %11, align 8
  store i64 %75, i64* %76, align 8
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %64, %44
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local %struct.wpa_supplicant* @wpas_p2p_get_go_group(%struct.wpa_supplicant*) #1

declare dso_local %struct.wpa_ssid* @wpas_p2p_get_persistent_go(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_create_iface(%struct.wpa_supplicant*) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
