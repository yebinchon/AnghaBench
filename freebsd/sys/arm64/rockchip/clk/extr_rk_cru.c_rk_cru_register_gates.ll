; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_cru.c_rk_cru_register_gates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_cru.c_rk_cru_register_gates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_cru_softc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32 }
%struct.rk_clk_gate_def = type { i32, i32, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_cru_softc*)* @rk_cru_register_gates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_cru_register_gates(%struct.rk_cru_softc* %0) #0 {
  %2 = alloca %struct.rk_cru_softc*, align 8
  %3 = alloca %struct.rk_clk_gate_def, align 8
  %4 = alloca i32, align 4
  store %struct.rk_cru_softc* %0, %struct.rk_cru_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %80, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %83

11:                                               ; preds = %5
  %12 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %2, align 8
  %13 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %80

22:                                               ; preds = %11
  %23 = call i32 @memset(%struct.rk_clk_gate_def* %3, i32 0, i32 56)
  %24 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %2, align 8
  %25 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.rk_clk_gate_def, %struct.rk_clk_gate_def* %3, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %2, align 8
  %35 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds %struct.rk_clk_gate_def, %struct.rk_clk_gate_def* %3, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %2, align 8
  %45 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.rk_clk_gate_def, %struct.rk_clk_gate_def* %3, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = getelementptr inbounds %struct.rk_clk_gate_def, %struct.rk_clk_gate_def* %3, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.rk_clk_gate_def, %struct.rk_clk_gate_def* %3, i32 0, i32 4
  store i32 %62, i32* %63, align 4
  %64 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %2, align 8
  %65 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.rk_clk_gate_def, %struct.rk_clk_gate_def* %3, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.rk_clk_gate_def, %struct.rk_clk_gate_def* %3, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = getelementptr inbounds %struct.rk_clk_gate_def, %struct.rk_clk_gate_def* %3, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.rk_clk_gate_def, %struct.rk_clk_gate_def* %3, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load %struct.rk_cru_softc*, %struct.rk_cru_softc** %2, align 8
  %77 = getelementptr inbounds %struct.rk_cru_softc, %struct.rk_cru_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rk_clk_gate_register(i32 %78, %struct.rk_clk_gate_def* %3)
  br label %80

80:                                               ; preds = %22, %21
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %5

83:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @memset(%struct.rk_clk_gate_def*, i32, i32) #1

declare dso_local i32 @rk_clk_gate_register(i32, %struct.rk_clk_gate_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
