; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_ccung.c_aw_ccung_register_gates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_ccung.c_aw_ccung_register_gates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_ccung_softc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }
%struct.clk_gate_def = type { i32, i32, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_ccung_softc*)* @aw_ccung_register_gates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_ccung_register_gates(%struct.aw_ccung_softc* %0) #0 {
  %2 = alloca %struct.aw_ccung_softc*, align 8
  %3 = alloca %struct.clk_gate_def, align 8
  %4 = alloca i32, align 4
  store %struct.aw_ccung_softc* %0, %struct.aw_ccung_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %73, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %8 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %76

11:                                               ; preds = %5
  %12 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %13 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %73

22:                                               ; preds = %11
  %23 = call i32 @memset(%struct.clk_gate_def* %3, i32 0, i32 48)
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %3, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %28 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %3, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %38 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %3, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %3, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %49 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %3, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %58 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %3, i32 0, i32 3
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %3, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %3, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds %struct.clk_gate_def, %struct.clk_gate_def* %3, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.aw_ccung_softc*, %struct.aw_ccung_softc** %2, align 8
  %70 = getelementptr inbounds %struct.aw_ccung_softc, %struct.aw_ccung_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clknode_gate_register(i32 %71, %struct.clk_gate_def* %3)
  br label %73

73:                                               ; preds = %22, %21
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %5

76:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @memset(%struct.clk_gate_def*, i32, i32) #1

declare dso_local i32 @clknode_gate_register(i32, %struct.clk_gate_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
