; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_wait_for_icf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_i2c.c_wait_for_icf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2C_IBSR = common dso_local global i32 0, align 4
@IBSR_TCF = common dso_local global i32 0, align 4
@IBSR_IBIF = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_softc*)* @wait_for_icf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_icf(%struct.i2c_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_softc* %0, %struct.i2c_softc** %3, align 8
  store i32 1000, i32* %4, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %11 = load i32, i32* @I2C_IBSR, align 4
  %12 = call i32 @READ1(%struct.i2c_softc* %10, i32 %11)
  %13 = load i32, i32* @IBSR_TCF, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %9
  %17 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %18 = load i32, i32* @I2C_IBSR, align 4
  %19 = call i32 @READ1(%struct.i2c_softc* %17, i32 %18)
  %20 = load i32, i32* @IBSR_IBIF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %25 = load i32, i32* @I2C_IBSR, align 4
  %26 = load i32, i32* @IBSR_IBIF, align 4
  %27 = call i32 @WRITE1(%struct.i2c_softc* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @IIC_NOERR, align 4
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %9
  %31 = call i32 @DELAY(i32 10)
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @READ1(%struct.i2c_softc*, i32) #1

declare dso_local i32 @WRITE1(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
