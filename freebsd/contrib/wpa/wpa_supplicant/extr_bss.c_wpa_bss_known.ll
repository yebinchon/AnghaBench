; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_known.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_known.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i64, i32*, %struct.wpa_ssid* }
%struct.wpa_bss = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_bss*)* @wpa_bss_known to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_bss_known(%struct.wpa_supplicant* %0, %struct.wpa_bss* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_bss*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %5, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  store %struct.wpa_ssid* %11, %struct.wpa_ssid** %6, align 8
  br label %12

12:                                               ; preds = %48, %2
  %13 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %14 = icmp ne %struct.wpa_ssid* %13, null
  br i1 %14, label %15, label %52

15:                                               ; preds = %12
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %17 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15
  br label %48

26:                                               ; preds = %20
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %42 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @os_memcmp(i32* %37, i32 %40, i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %53

47:                                               ; preds = %34, %26
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %50 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %49, i32 0, i32 2
  %51 = load %struct.wpa_ssid*, %struct.wpa_ssid** %50, align 8
  store %struct.wpa_ssid* %51, %struct.wpa_ssid** %6, align 8
  br label %12

52:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @os_memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
