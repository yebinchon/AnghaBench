; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_cpu_enable_sre.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_cpu_enable_sre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { i32 }

@icc_sre_el1 = common dso_local global i32 0, align 4
@ICC_SRE_EL1_SRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"ERROR: CPU%u cannot enable CPU interface via system registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"CPU%u enabled CPU interface via system registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gic_v3_softc*)* @gic_v3_cpu_enable_sre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_v3_cpu_enable_sre(%struct.gic_v3_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gic_v3_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gic_v3_softc* %0, %struct.gic_v3_softc** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @PCPU_GET(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @icc_sre_el1, align 4
  %9 = call i32 @READ_SPECIALREG(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @ICC_SRE_EL1_SRE, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @icc_sre_el1, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @WRITE_SPECIALREG(i32 %13, i32 %14)
  %16 = call i32 (...) @isb()
  %17 = load i32, i32* @icc_sre_el1, align 4
  %18 = call i32 @READ_SPECIALREG(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ICC_SRE_EL1_SRE, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %25 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %41

30:                                               ; preds = %1
  %31 = load i64, i64* @bootverbose, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %35 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  br label %40

40:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @READ_SPECIALREG(i32) #1

declare dso_local i32 @WRITE_SPECIALREG(i32, i32) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
