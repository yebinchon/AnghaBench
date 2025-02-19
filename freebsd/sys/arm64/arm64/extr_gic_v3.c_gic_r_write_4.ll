; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_r_write_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_r_write_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.resource }
%struct.resource = type { i32 }

@cpuid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gic_r_write_4(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gic_v3_softc*, align 8
  %8 = alloca %struct.resource*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.gic_v3_softc* @device_get_softc(i32 %9)
  store %struct.gic_v3_softc* %10, %struct.gic_v3_softc** %7, align 8
  %11 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %7, align 8
  %12 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  %15 = load i32, i32* @cpuid, align 4
  %16 = call i64 @PCPU_GET(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.resource* %19, %struct.resource** %8, align 8
  %20 = load %struct.resource*, %struct.resource** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bus_write_4(%struct.resource* %20, i32 %21, i32 %22)
  ret void
}

declare dso_local %struct.gic_v3_softc* @device_get_softc(i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
