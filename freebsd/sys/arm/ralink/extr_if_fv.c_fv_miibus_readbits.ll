; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_miibus_readbits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_miibus_readbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { i32 }

@CSR_MIIMNG = common dso_local global i32 0, align 4
@MII_RD = common dso_local global i32 0, align 4
@MII_CLK = common dso_local global i32 0, align 4
@MII_DIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fv_softc*, i32)* @fv_miibus_readbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fv_miibus_readbits(%struct.fv_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fv_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fv_softc* %0, %struct.fv_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %2
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %14 = load i32, i32* @CSR_MIIMNG, align 4
  %15 = load i32, i32* @MII_RD, align 4
  %16 = call i32 @CSR_WRITE_4(%struct.fv_softc* %13, i32 %14, i32 %15)
  %17 = call i32 @DELAY(i32 10)
  %18 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %19 = load i32, i32* @CSR_MIIMNG, align 4
  %20 = load i32, i32* @MII_RD, align 4
  %21 = load i32, i32* @MII_CLK, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @CSR_WRITE_4(%struct.fv_softc* %18, i32 %19, i32 %22)
  %24 = call i32 @DELAY(i32 10)
  %25 = load %struct.fv_softc*, %struct.fv_softc** %3, align 8
  %26 = load i32, i32* @CSR_MIIMNG, align 4
  %27 = call i32 @CSR_READ_4(%struct.fv_softc* %25, i32 %26)
  %28 = load i32, i32* @MII_DIN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %10
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %10
  br label %6

35:                                               ; preds = %6
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @CSR_WRITE_4(%struct.fv_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.fv_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
