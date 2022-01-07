; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_already_connected.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_already_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.wpa_ssid* }
%struct.wpa_ssid = type { i64, i32, i32, %struct.wpa_cred* }
%struct.wpa_cred = type { i32 }
%struct.wpa_bss = type { i32, i32 }

@WPA_ASSOCIATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_cred*, %struct.wpa_bss*)* @already_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @already_connected(%struct.wpa_supplicant* %0, %struct.wpa_cred* %1, %struct.wpa_bss* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_cred*, align 8
  %7 = alloca %struct.wpa_bss*, align 8
  %8 = alloca %struct.wpa_ssid*, align 8
  %9 = alloca %struct.wpa_ssid*, align 8
  %10 = alloca %struct.wpa_bss*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_cred* %1, %struct.wpa_cred** %6, align 8
  store %struct.wpa_bss* %2, %struct.wpa_bss** %7, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WPA_ASSOCIATED, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 1
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %18, align 8
  %20 = icmp eq %struct.wpa_ssid* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %71

22:                                               ; preds = %16
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 1
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %24, align 8
  store %struct.wpa_ssid* %25, %struct.wpa_ssid** %8, align 8
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %27 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %26, i32 0, i32 3
  %28 = load %struct.wpa_cred*, %struct.wpa_cred** %27, align 8
  %29 = load %struct.wpa_cred*, %struct.wpa_cred** %6, align 8
  %30 = icmp ne %struct.wpa_cred* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %71

32:                                               ; preds = %22
  %33 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %34 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %37 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %32
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %42 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %45 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wpa_bss*, %struct.wpa_bss** %7, align 8
  %48 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @os_memcmp(i32 %43, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40, %32
  store i32 0, i32* %4, align 4
  br label %71

53:                                               ; preds = %40
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %9, align 8
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %55 = call %struct.wpa_bss* @wpa_supplicant_pick_network(%struct.wpa_supplicant* %54, %struct.wpa_ssid** %9)
  store %struct.wpa_bss* %55, %struct.wpa_bss** %10, align 8
  %56 = load %struct.wpa_bss*, %struct.wpa_bss** %10, align 8
  %57 = icmp ne %struct.wpa_bss* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %60 = icmp ne %struct.wpa_ssid* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %63 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %66 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %71

70:                                               ; preds = %61, %58, %53
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %69, %52, %31, %21
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local %struct.wpa_bss* @wpa_supplicant_pick_network(%struct.wpa_supplicant*, %struct.wpa_ssid**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
