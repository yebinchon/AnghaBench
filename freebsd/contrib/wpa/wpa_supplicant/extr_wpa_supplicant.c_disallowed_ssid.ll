; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_disallowed_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_disallowed_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.wpa_ssid_value* }
%struct.wpa_ssid_value = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disallowed_ssid(%struct.wpa_supplicant* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpa_ssid_value*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 1
  %12 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %13 = icmp eq %struct.wpa_ssid_value* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %50

18:                                               ; preds = %14
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %46, %18
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 1
  %28 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %28, i64 %29
  store %struct.wpa_ssid_value* %30, %struct.wpa_ssid_value** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %33 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %9, align 8
  %39 = getelementptr inbounds %struct.wpa_ssid_value, %struct.wpa_ssid_value* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @os_memcmp(i32* %37, i32 %40, i64 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %50

45:                                               ; preds = %36, %25
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %19

49:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %44, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @os_memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
