; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_l2cache.c_platform_pl310_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_l2cache.c_platform_pl310_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl310_softc = type { i32 }

@PL310_AUX_CTRL = common dso_local global i32 0, align 4
@AUX_CTRL_INSTR_PREFETCH = common dso_local global i32 0, align 4
@AUX_CTRL_DATA_PREFETCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_pl310_init(%struct.pl310_softc* %0) #0 {
  %2 = alloca %struct.pl310_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.pl310_softc* %0, %struct.pl310_softc** %2, align 8
  %4 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %5 = load i32, i32* @PL310_AUX_CTRL, align 4
  %6 = call i32 @pl310_read4(%struct.pl310_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @AUX_CTRL_INSTR_PREFETCH, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @AUX_CTRL_DATA_PREFETCH, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.pl310_softc*, %struct.pl310_softc** %2, align 8
  %15 = load i32, i32* @PL310_AUX_CTRL, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pl310_write4(%struct.pl310_softc* %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @pl310_read4(%struct.pl310_softc*, i32) #1

declare dso_local i32 @pl310_write4(%struct.pl310_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
