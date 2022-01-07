; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_intr_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_intr_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32*, i32** }

@.str = private unnamed_addr constant [22 x i8] c"unable to attach PIC\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@bcm_gpio_intr_bank0 = common dso_local global i32 0, align 4
@bcm_gpio_intr_bank1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_gpio_intr_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_intr_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_gpio_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.bcm_gpio_softc* @device_get_softc(i32 %5)
  store %struct.bcm_gpio_softc* %6, %struct.bcm_gpio_softc** %4, align 8
  %7 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %8 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %7, i32 0, i32 1
  %9 = load i32**, i32*** %8, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %15 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %1
  store i32 -1, i32* %2, align 4
  br label %67

21:                                               ; preds = %13
  %22 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %23 = call i64 @bcm_gpio_pic_attach(%struct.bcm_gpio_softc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %67

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %31 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @INTR_TYPE_MISC, align 4
  %36 = load i32, i32* @INTR_MPSAFE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @bcm_gpio_intr_bank0, align 4
  %39 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %40 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %41 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i64 @bus_setup_intr(i32 %29, i32* %34, i32 %37, i32 %38, i32* null, %struct.bcm_gpio_softc* %39, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %67

47:                                               ; preds = %28
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %50 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @INTR_TYPE_MISC, align 4
  %55 = load i32, i32* @INTR_MPSAFE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @bcm_gpio_intr_bank1, align 4
  %58 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %59 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %60 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = call i64 @bus_setup_intr(i32 %48, i32* %53, i32 %56, i32 %57, i32* null, %struct.bcm_gpio_softc* %58, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %67

66:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65, %46, %25, %20
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.bcm_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @bcm_gpio_pic_attach(%struct.bcm_gpio_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.bcm_gpio_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
