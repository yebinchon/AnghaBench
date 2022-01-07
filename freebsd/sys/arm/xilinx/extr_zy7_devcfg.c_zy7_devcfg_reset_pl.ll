; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_reset_pl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_devcfg.c_zy7_devcfg_reset_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_devcfg_softc = type { i32 }

@ZY7_DEVCFG_CTRL = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_STATUS = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_ALL = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_MASK = common dso_local global i32 0, align 4
@ZY7_DEVCFG_INT_PCFG_INIT_PE = common dso_local global i32 0, align 4
@ZY7_DEVCFG_CTRL_PCFG_PROG_B = common dso_local global i32 0, align 4
@ZY7_DEVCFG_STATUS = common dso_local global i32 0, align 4
@ZY7_DEVCFG_STATUS_PCFG_INIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"zy7i1\00", align 1
@hz = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"zy7i2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zy7_devcfg_softc*)* @zy7_devcfg_reset_pl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_devcfg_reset_pl(%struct.zy7_devcfg_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zy7_devcfg_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zy7_devcfg_softc* %0, %struct.zy7_devcfg_softc** %3, align 8
  %7 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %8 = call i32 @DEVCFG_SC_ASSERT_LOCKED(%struct.zy7_devcfg_softc* %7)
  %9 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %10 = load i32, i32* @ZY7_DEVCFG_CTRL, align 4
  %11 = call i32 @RD4(%struct.zy7_devcfg_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %13 = load i32, i32* @ZY7_DEVCFG_INT_STATUS, align 4
  %14 = load i32, i32* @ZY7_DEVCFG_INT_ALL, align 4
  %15 = call i32 @WR4(%struct.zy7_devcfg_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %17 = load i32, i32* @ZY7_DEVCFG_INT_MASK, align 4
  %18 = load i32, i32* @ZY7_DEVCFG_INT_PCFG_INIT_PE, align 4
  %19 = xor i32 %18, -1
  %20 = call i32 @WR4(%struct.zy7_devcfg_softc* %16, i32 %17, i32 %19)
  %21 = load i32, i32* @ZY7_DEVCFG_CTRL_PCFG_PROG_B, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %25 = load i32, i32* @ZY7_DEVCFG_CTRL, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @WR4(%struct.zy7_devcfg_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %29 = load i32, i32* @ZY7_DEVCFG_STATUS, align 4
  %30 = call i32 @RD4(%struct.zy7_devcfg_softc* %28, i32 %29)
  %31 = load i32, i32* @ZY7_DEVCFG_STATUS_PCFG_INIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %36 = load i32, i32* @ZY7_DEVCFG_INT_MASK, align 4
  %37 = call i32 @WR4(%struct.zy7_devcfg_softc* %35, i32 %36, i32 -1)
  br label %50

38:                                               ; preds = %1
  %39 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %40 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %41 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %40, i32 0, i32 0
  %42 = load i32, i32* @PCATCH, align 4
  %43 = load i32, i32* @hz, align 4
  %44 = call i32 @mtx_sleep(%struct.zy7_devcfg_softc* %39, i32* %41, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %106

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %34
  %51 = load i32, i32* @ZY7_DEVCFG_CTRL_PCFG_PROG_B, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %56 = load i32, i32* @ZY7_DEVCFG_CTRL, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @WR4(%struct.zy7_devcfg_softc* %55, i32 %56, i32 %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %72, %50
  %60 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %61 = load i32, i32* @ZY7_DEVCFG_STATUS, align 4
  %62 = call i32 @RD4(%struct.zy7_devcfg_softc* %60, i32 %61)
  %63 = load i32, i32* @ZY7_DEVCFG_STATUS_PCFG_INIT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  %69 = icmp sge i32 %68, 100
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @EIO, align 4
  store i32 %71, i32* %2, align 4
  br label %106

72:                                               ; preds = %66
  %73 = call i32 @DELAY(i32 5)
  br label %59

74:                                               ; preds = %59
  %75 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %76 = load i32, i32* @ZY7_DEVCFG_INT_STATUS, align 4
  %77 = load i32, i32* @ZY7_DEVCFG_INT_ALL, align 4
  %78 = call i32 @WR4(%struct.zy7_devcfg_softc* %75, i32 %76, i32 %77)
  %79 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %80 = load i32, i32* @ZY7_DEVCFG_INT_MASK, align 4
  %81 = load i32, i32* @ZY7_DEVCFG_INT_PCFG_INIT_PE, align 4
  %82 = xor i32 %81, -1
  %83 = call i32 @WR4(%struct.zy7_devcfg_softc* %79, i32 %80, i32 %82)
  %84 = load i32, i32* @ZY7_DEVCFG_CTRL_PCFG_PROG_B, align 4
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %88 = load i32, i32* @ZY7_DEVCFG_CTRL, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @WR4(%struct.zy7_devcfg_softc* %87, i32 %88, i32 %89)
  %91 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %92 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %93 = getelementptr inbounds %struct.zy7_devcfg_softc, %struct.zy7_devcfg_softc* %92, i32 0, i32 0
  %94 = load i32, i32* @PCATCH, align 4
  %95 = load i32, i32* @hz, align 4
  %96 = call i32 @mtx_sleep(%struct.zy7_devcfg_softc* %91, i32* %93, i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %74
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %106

101:                                              ; preds = %74
  %102 = load %struct.zy7_devcfg_softc*, %struct.zy7_devcfg_softc** %3, align 8
  %103 = load i32, i32* @ZY7_DEVCFG_INT_STATUS, align 4
  %104 = load i32, i32* @ZY7_DEVCFG_INT_ALL, align 4
  %105 = call i32 @WR4(%struct.zy7_devcfg_softc* %102, i32 %103, i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %101, %99, %70, %47
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @DEVCFG_SC_ASSERT_LOCKED(%struct.zy7_devcfg_softc*) #1

declare dso_local i32 @RD4(%struct.zy7_devcfg_softc*, i32) #1

declare dso_local i32 @WR4(%struct.zy7_devcfg_softc*, i32, i32) #1

declare dso_local i32 @mtx_sleep(%struct.zy7_devcfg_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
