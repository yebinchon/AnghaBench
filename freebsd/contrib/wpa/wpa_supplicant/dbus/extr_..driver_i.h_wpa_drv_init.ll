; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_..driver_i.h_wpa_drv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* (%struct.wpa_supplicant*, i8*, i32)*, {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.wpa_supplicant*, i8*)* @wpa_drv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_drv_init(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8* (%struct.wpa_supplicant*, i8*, i32)*, i8* (%struct.wpa_supplicant*, i8*, i32)** %9, align 8
  %11 = icmp ne i8* (%struct.wpa_supplicant*, i8*, i32)* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8* (%struct.wpa_supplicant*, i8*, i32)*, i8* (%struct.wpa_supplicant*, i8*, i32)** %16, align 8
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* %17(%struct.wpa_supplicant* %18, i8* %19, i32 %22)
  store i8* %23, i8** %3, align 8
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = bitcast {}** %28 to i8* (%struct.wpa_supplicant*, i8*)**
  %30 = load i8* (%struct.wpa_supplicant*, i8*)*, i8* (%struct.wpa_supplicant*, i8*)** %29, align 8
  %31 = icmp ne i8* (%struct.wpa_supplicant*, i8*)* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = bitcast {}** %36 to i8* (%struct.wpa_supplicant*, i8*)**
  %38 = load i8* (%struct.wpa_supplicant*, i8*)*, i8* (%struct.wpa_supplicant*, i8*)** %37, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* %38(%struct.wpa_supplicant* %39, i8* %40)
  store i8* %41, i8** %3, align 8
  br label %43

42:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %43

43:                                               ; preds = %42, %32, %12
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
