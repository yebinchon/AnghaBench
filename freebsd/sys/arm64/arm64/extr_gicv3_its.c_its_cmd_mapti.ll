; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_mapti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_mapti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gicv3_its_irqsrc = type { i64, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.gicv3_its_softc = type { i64, %struct.its_col** }
%struct.its_col = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.its_col*, %struct.TYPE_7__* }

@ITS_CMD_MAPTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gicv3_its_irqsrc*)* @its_cmd_mapti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_cmd_mapti(i32 %0, %struct.gicv3_its_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gicv3_its_irqsrc*, align 8
  %5 = alloca %struct.gicv3_its_softc*, align 8
  %6 = alloca %struct.its_cmd_desc, align 8
  %7 = alloca %struct.its_col*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gicv3_its_irqsrc* %1, %struct.gicv3_its_irqsrc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.gicv3_its_softc* @device_get_softc(i32 %9)
  store %struct.gicv3_its_softc* %10, %struct.gicv3_its_softc** %5, align 8
  %11 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %4, align 8
  %12 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i64 @CPU_FFS(i32* %13)
  %15 = sub i64 %14, 1
  store i64 %15, i64* %8, align 8
  %16 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %17 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %16, i32 0, i32 1
  %18 = load %struct.its_col**, %struct.its_col*** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.its_col*, %struct.its_col** %18, i64 %19
  %21 = load %struct.its_col*, %struct.its_col** %20, align 8
  store %struct.its_col* %21, %struct.its_col** %7, align 8
  %22 = load i32, i32* @ITS_CMD_MAPTI, align 4
  %23 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %6, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %4, align 8
  %25 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %6, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.its_col*, %struct.its_col** %7, align 8
  %30 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %6, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store %struct.its_col* %29, %struct.its_col** %31, align 8
  %32 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %4, align 8
  %33 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %4, align 8
  %36 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %34, %40
  %42 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %6, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %4, align 8
  %45 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %48 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %6, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @its_cmd_send(i32 %53, %struct.its_cmd_desc* %6)
  ret void
}

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

declare dso_local i64 @CPU_FFS(i32*) #1

declare dso_local i32 @its_cmd_send(i32, %struct.its_cmd_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
