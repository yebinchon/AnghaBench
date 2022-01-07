; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_vbus_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_usbphy.c_awusbphy_vbus_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awusbphy_softc = type { i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Cannot get status of id pin %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @awusbphy_vbus_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awusbphy_vbus_detect(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.awusbphy_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.awusbphy_softc* @device_get_softc(i32 %9)
  store %struct.awusbphy_softc* %10, %struct.awusbphy_softc** %6, align 8
  %11 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %6, align 8
  %12 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.awusbphy_softc*, %struct.awusbphy_softc** %6, align 8
  %17 = getelementptr inbounds %struct.awusbphy_softc, %struct.awusbphy_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @gpio_pin_is_active(i32 %18, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32*, i32** %5, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %27, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.awusbphy_softc* @device_get_softc(i32) #1

declare dso_local i32 @gpio_pin_is_active(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
