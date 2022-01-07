; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CPSW_WR_SOFT_RESET = common dso_local global i32 0, align 4
@CPSW_SS_SOFT_RESET = common dso_local global i32 0, align 4
@CPSW_CPDMA_SOFT_RESET = common dso_local global i32 0, align 4
@CPSW_CPDMA_TX_CONTROL = common dso_local global i32 0, align 4
@CPSW_CPDMA_RX_CONTROL = common dso_local global i32 0, align 4
@CPSW_CPDMA_RX_INTMASK_CLEAR = common dso_local global i32 0, align 4
@CPSW_CPDMA_TX_INTMASK_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*)* @cpsw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_reset(%struct.cpsw_softc* %0) #0 {
  %2 = alloca %struct.cpsw_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %2, align 8
  %4 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %5 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @callout_stop(i32* %6)
  %8 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %9 = load i32, i32* @CPSW_WR_SOFT_RESET, align 4
  %10 = call i32 @cpsw_write_4(%struct.cpsw_softc* %8, i32 %9, i32 1)
  br label %11

11:                                               ; preds = %17, %1
  %12 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %13 = load i32, i32* @CPSW_WR_SOFT_RESET, align 4
  %14 = call i32 @cpsw_read_4(%struct.cpsw_softc* %12, i32 %13)
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %11

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @CPSW_WR_C_RX_THRESH_EN(i32 %24)
  %26 = call i32 @cpsw_write_4(%struct.cpsw_softc* %23, i32 %25, i32 0)
  %27 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @CPSW_WR_C_TX_EN(i32 %28)
  %30 = call i32 @cpsw_write_4(%struct.cpsw_softc* %27, i32 %29, i32 0)
  %31 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @CPSW_WR_C_RX_EN(i32 %32)
  %34 = call i32 @cpsw_write_4(%struct.cpsw_softc* %31, i32 %33, i32 0)
  %35 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @CPSW_WR_C_MISC_EN(i32 %36)
  %38 = call i32 @cpsw_write_4(%struct.cpsw_softc* %35, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %44 = load i32, i32* @CPSW_SS_SOFT_RESET, align 4
  %45 = call i32 @cpsw_write_4(%struct.cpsw_softc* %43, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %52, %42
  %47 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %48 = load i32, i32* @CPSW_SS_SOFT_RESET, align 4
  %49 = call i32 @cpsw_read_4(%struct.cpsw_softc* %47, i32 %48)
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %46

53:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @CPSW_SL_SOFT_RESET(i32 %59)
  %61 = call i32 @cpsw_write_4(%struct.cpsw_softc* %58, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %69, %57
  %63 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @CPSW_SL_SOFT_RESET(i32 %64)
  %66 = call i32 @cpsw_read_4(%struct.cpsw_softc* %63, i32 %65)
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %62

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %76 = load i32, i32* @CPSW_CPDMA_SOFT_RESET, align 4
  %77 = call i32 @cpsw_write_4(%struct.cpsw_softc* %75, i32 %76, i32 1)
  br label %78

78:                                               ; preds = %84, %74
  %79 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %80 = load i32, i32* @CPSW_CPDMA_SOFT_RESET, align 4
  %81 = call i32 @cpsw_read_4(%struct.cpsw_softc* %79, i32 %80)
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %78

85:                                               ; preds = %78
  %86 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %87 = load i32, i32* @CPSW_CPDMA_TX_CONTROL, align 4
  %88 = call i32 @cpsw_write_4(%struct.cpsw_softc* %86, i32 %87, i32 0)
  %89 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %90 = load i32, i32* @CPSW_CPDMA_RX_CONTROL, align 4
  %91 = call i32 @cpsw_write_4(%struct.cpsw_softc* %89, i32 %90, i32 0)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %112, %85
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %115

95:                                               ; preds = %92
  %96 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @CPSW_CPDMA_TX_HDP(i32 %97)
  %99 = call i32 @cpsw_write_4(%struct.cpsw_softc* %96, i32 %98, i32 0)
  %100 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @CPSW_CPDMA_RX_HDP(i32 %101)
  %103 = call i32 @cpsw_write_4(%struct.cpsw_softc* %100, i32 %102, i32 0)
  %104 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @CPSW_CPDMA_TX_CP(i32 %105)
  %107 = call i32 @cpsw_write_4(%struct.cpsw_softc* %104, i32 %106, i32 0)
  %108 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @CPSW_CPDMA_RX_CP(i32 %109)
  %111 = call i32 @cpsw_write_4(%struct.cpsw_softc* %108, i32 %110, i32 0)
  br label %112

112:                                              ; preds = %95
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %92

115:                                              ; preds = %92
  %116 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %117 = load i32, i32* @CPSW_CPDMA_RX_INTMASK_CLEAR, align 4
  %118 = call i32 @cpsw_write_4(%struct.cpsw_softc* %116, i32 %117, i32 -1)
  %119 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %120 = load i32, i32* @CPSW_CPDMA_TX_INTMASK_CLEAR, align 4
  %121 = call i32 @cpsw_write_4(%struct.cpsw_softc* %119, i32 %120, i32 -1)
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @cpsw_write_4(%struct.cpsw_softc*, i32, i32) #1

declare dso_local i32 @cpsw_read_4(%struct.cpsw_softc*, i32) #1

declare dso_local i32 @CPSW_WR_C_RX_THRESH_EN(i32) #1

declare dso_local i32 @CPSW_WR_C_TX_EN(i32) #1

declare dso_local i32 @CPSW_WR_C_RX_EN(i32) #1

declare dso_local i32 @CPSW_WR_C_MISC_EN(i32) #1

declare dso_local i32 @CPSW_SL_SOFT_RESET(i32) #1

declare dso_local i32 @CPSW_CPDMA_TX_HDP(i32) #1

declare dso_local i32 @CPSW_CPDMA_RX_HDP(i32) #1

declare dso_local i32 @CPSW_CPDMA_TX_CP(i32) #1

declare dso_local i32 @CPSW_CPDMA_RX_CP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
