; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_driver_i.h_wpa_drv_set_rekey_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_driver_i.h_wpa_drv_set_rekey_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*, i64, i32*, i64, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*, i64, i32*, i64, i32*)* @wpa_drv_set_rekey_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_drv_set_rekey_info(%struct.wpa_supplicant* %0, i32* %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32*, i64, i32*, i64, i32*)*, i32 (i32, i32*, i64, i32*, i64, i32*)** %16, align 8
  %18 = icmp ne i32 (i32, i32*, i64, i32*, i64, i32*)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %35

20:                                               ; preds = %6
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32*, i64, i32*, i64, i32*)*, i32 (i32, i32*, i64, i32*, i64, i32*)** %24, align 8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 %25(i32 %28, i32* %29, i64 %30, i32* %31, i64 %32, i32* %33)
  br label %35

35:                                               ; preds = %20, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
