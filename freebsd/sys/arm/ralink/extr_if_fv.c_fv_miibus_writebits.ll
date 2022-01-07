; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_miibus_writebits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_miibus_writebits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { i32 }

@MII_DOUT = common dso_local global i32 0, align 4
@CSR_MIIMNG = common dso_local global i32 0, align 4
@MII_WR = common dso_local global i32 0, align 4
@MII_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fv_softc*, i32, i32)* @fv_miibus_writebits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fv_miibus_writebits(%struct.fv_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fv_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fv_softc* %0, %struct.fv_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %21, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %13, %14
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @MII_DOUT, align 4
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %7, align 4
  %23 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %24 = load i32, i32* @CSR_MIIMNG, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MII_WR, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @CSR_WRITE_4(%struct.fv_softc* %23, i32 %24, i32 %27)
  %29 = call i32 @DELAY(i32 10)
  %30 = load %struct.fv_softc*, %struct.fv_softc** %4, align 8
  %31 = load i32, i32* @CSR_MIIMNG, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MII_WR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MII_CLK, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @CSR_WRITE_4(%struct.fv_softc* %30, i32 %31, i32 %36)
  %38 = call i32 @DELAY(i32 10)
  br label %8

39:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @CSR_WRITE_4(%struct.fv_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
