; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_clkmsr.c_aml8726_clkmsr_fixup_clk81.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_clkmsr.c_aml8726_clkmsr_fixup_clk81.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_clkmsr_softc = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aml8726_clkmsr_softc*, i32)* @aml8726_clkmsr_fixup_clk81 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_clkmsr_fixup_clk81(%struct.aml8726_clkmsr_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aml8726_clkmsr_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aml8726_clkmsr_softc* %0, %struct.aml8726_clkmsr_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.aml8726_clkmsr_softc*, %struct.aml8726_clkmsr_softc** %3, align 8
  %10 = getelementptr inbounds %struct.aml8726_clkmsr_softc, %struct.aml8726_clkmsr_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @OF_getencprop(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %5, i32 8)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 8
  %18 = icmp ne i64 %17, 1
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @OF_node_from_xref(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19, %2
  br label %44

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @OF_getencprop(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %5, i32 8)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 8
  %33 = icmp ne i64 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %27
  br label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @cpu_to_fdt32(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = bitcast i32* %4 to i8*
  %43 = call i32 @OF_setprop(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 4)
  br label %44

44:                                               ; preds = %38, %37, %26
  ret void
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @OF_node_from_xref(i64) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

declare dso_local i32 @OF_setprop(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
