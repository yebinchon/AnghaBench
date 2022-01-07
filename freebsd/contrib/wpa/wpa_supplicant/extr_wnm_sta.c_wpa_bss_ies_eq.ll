; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wpa_bss_ies_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_wpa_bss_ies_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_bss*, %struct.wpa_bss*, i64)* @wpa_bss_ies_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_bss_ies_eq(%struct.wpa_bss* %0, %struct.wpa_bss* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_bss*, align 8
  %6 = alloca %struct.wpa_bss*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.wpa_bss* %0, %struct.wpa_bss** %5, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %11 = icmp ne %struct.wpa_bss* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %14 = icmp ne %struct.wpa_bss* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %46

16:                                               ; preds = %12
  %17 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64* @wpa_bss_get_ie(%struct.wpa_bss* %17, i64 %18)
  store i64* %19, i64** %8, align 8
  %20 = load %struct.wpa_bss*, %struct.wpa_bss** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64* @wpa_bss_get_ie(%struct.wpa_bss* %20, i64 %21)
  store i64* %22, i64** %9, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load i64*, i64** %9, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %25, %16
  store i32 0, i32* %4, align 4
  br label %46

37:                                               ; preds = %28
  %38 = load i64*, i64** %8, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @os_memcmp(i64* %38, i64* %39, i64 %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %37, %36, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64* @wpa_bss_get_ie(%struct.wpa_bss*, i64) #1

declare dso_local i64 @os_memcmp(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
