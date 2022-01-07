; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_init_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_init_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gicv3_its_softc = type { %struct.TYPE_3__**, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.redist_pcpu = type { i32, i32 }

@GICR_TYPER = common dso_local global i32 0, align 4
@GICR_TYPER_PLPIS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GITS_TYPER = common dso_local global i32 0, align 4
@GITS_TYPER_PTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.gicv3_its_softc*)* @its_init_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_init_cpu(i32 %0, %struct.gicv3_its_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gicv3_its_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.redist_pcpu*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.gicv3_its_softc* %1, %struct.gicv3_its_softc** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @PCPU_GET(i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %16 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %15, i32 0, i32 1
  %17 = call i32 @CPU_ISSET(i64 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GICR_TYPER, align 4
  %23 = call i32 @gic_r_read_4(i32 %21, i32 %22)
  %24 = load i32, i32* @GICR_TYPER_PLPIS, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.redist_pcpu* @gicv3_get_redist(i32 %30)
  store %struct.redist_pcpu* %31, %struct.redist_pcpu** %9, align 8
  %32 = load %struct.redist_pcpu*, %struct.redist_pcpu** %9, align 8
  %33 = getelementptr inbounds %struct.redist_pcpu, %struct.redist_pcpu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %39 = call i32 @its_init_cpu_lpi(i32 %37, %struct.gicv3_its_softc* %38)
  %40 = load %struct.redist_pcpu*, %struct.redist_pcpu** %9, align 8
  %41 = getelementptr inbounds %struct.redist_pcpu, %struct.redist_pcpu* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %44 = load i32, i32* @GITS_TYPER, align 4
  %45 = call i32 @gic_its_read_8(%struct.gicv3_its_softc* %43, i32 %44)
  %46 = load i32, i32* @GITS_TYPER_PTA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.redist_pcpu*, %struct.redist_pcpu** %9, align 8
  %51 = getelementptr inbounds %struct.redist_pcpu, %struct.redist_pcpu* %50, i32 0, i32 1
  %52 = call i32 @rman_get_virtual(i32* %51)
  %53 = call i32 @vtophys(i32 %52)
  store i32 %53, i32* %7, align 4
  br label %59

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @GICR_TYPER, align 4
  %57 = call i32 @gic_r_read_8(i32 %55, i32 %56)
  %58 = call i32 @GICR_TYPER_CPUNUM(i32 %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %62 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %63, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %60, i32* %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %70 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %71, i64 %72
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 %68, i64* %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %78 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %79, i64 %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = call i32 @its_cmd_mapc(i32 %76, %struct.TYPE_3__* %82, i32 1)
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %86 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %87, i64 %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = call i32 @its_cmd_invall(i32 %84, %struct.TYPE_3__* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %59, %27, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @PCPU_GET(i64) #1

declare dso_local i32 @CPU_ISSET(i64, i32*) #1

declare dso_local i32 @gic_r_read_4(i32, i32) #1

declare dso_local %struct.redist_pcpu* @gicv3_get_redist(i32) #1

declare dso_local i32 @its_init_cpu_lpi(i32, %struct.gicv3_its_softc*) #1

declare dso_local i32 @gic_its_read_8(%struct.gicv3_its_softc*, i32) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @rman_get_virtual(i32*) #1

declare dso_local i32 @GICR_TYPER_CPUNUM(i32) #1

declare dso_local i32 @gic_r_read_8(i32, i32) #1

declare dso_local i32 @its_cmd_mapc(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @its_cmd_invall(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
