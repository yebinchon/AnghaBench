; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_driver_i.h_wpa_drv_wnm_oper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_driver_i.h_wpa_drv_wnm_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32, i32*, i32*, i32*)* @wpa_drv_wnm_oper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_drv_wnm_oper(%struct.wpa_supplicant* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32*, i32*, i32*)*, i32 (i32, i32, i32*, i32*, i32*)** %15, align 8
  %17 = icmp ne i32 (i32, i32, i32*, i32*, i32*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %33

19:                                               ; preds = %5
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32*, i32*, i32*)*, i32 (i32, i32, i32*, i32*, i32*)** %23, align 8
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 %24(i32 %27, i32 %28, i32* %29, i32* %30, i32* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %19, %18
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
