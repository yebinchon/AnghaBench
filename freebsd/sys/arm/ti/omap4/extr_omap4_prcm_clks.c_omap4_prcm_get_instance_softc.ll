; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_prcm_get_instance_softc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_prcm_get_instance_softc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap4_prcm_softc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"omap4_prcm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omap4_prcm_softc* (i32)* @omap4_prcm_get_instance_softc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %0) #0 {
  %2 = alloca %struct.omap4_prcm_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap4_prcm_softc*, align 8
  store i32 %0, i32* %3, align 4
  %9 = call i32 @devclass_find(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @devclass_get_maxunit(i32 %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @devclass_get_device(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.omap4_prcm_softc* @device_get_softc(i32 %20)
  store %struct.omap4_prcm_softc* %21, %struct.omap4_prcm_softc** %8, align 8
  %22 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %8, align 8
  %23 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %8, align 8
  store %struct.omap4_prcm_softc* %28, %struct.omap4_prcm_softc** %2, align 8
  br label %34

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %12

33:                                               ; preds = %12
  store %struct.omap4_prcm_softc* null, %struct.omap4_prcm_softc** %2, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %2, align 8
  ret %struct.omap4_prcm_softc* %35
}

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @devclass_get_maxunit(i32) #1

declare dso_local i32 @devclass_get_device(i32, i32) #1

declare dso_local %struct.omap4_prcm_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
