; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_i2c.c_wait_for_iif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_i2c.c_wait_for_iif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2CCON = common dso_local global i32 0, align 4
@IPEND = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_softc*)* @wait_for_iif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_iif(%struct.i2c_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_softc* %0, %struct.i2c_softc** %3, align 8
  store i32 1000, i32* %4, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %12 = load i32, i32* @I2CCON, align 4
  %13 = call i32 @READ1(%struct.i2c_softc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IPEND, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @IIC_NOERR, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %10
  %21 = call i32 @DELAY(i32 50)
  br label %6

22:                                               ; preds = %6
  %23 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @READ1(%struct.i2c_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
