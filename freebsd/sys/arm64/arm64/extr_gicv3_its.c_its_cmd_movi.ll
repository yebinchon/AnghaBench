; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_movi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_movi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gicv3_its_irqsrc = type { %struct.TYPE_8__*, i64, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.gicv3_its_softc = type { %struct.its_col** }
%struct.its_col = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, %struct.its_col*, %struct.TYPE_8__* }

@ITS_CMD_MOVI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gicv3_its_irqsrc*)* @its_cmd_movi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_cmd_movi(i32 %0, %struct.gicv3_its_irqsrc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gicv3_its_irqsrc*, align 8
  %5 = alloca %struct.gicv3_its_softc*, align 8
  %6 = alloca %struct.its_cmd_desc, align 8
  %7 = alloca %struct.its_col*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gicv3_its_irqsrc* %1, %struct.gicv3_its_irqsrc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.gicv3_its_softc* @device_get_softc(i32 %8)
  store %struct.gicv3_its_softc* %9, %struct.gicv3_its_softc** %5, align 8
  %10 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %11 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %10, i32 0, i32 0
  %12 = load %struct.its_col**, %struct.its_col*** %11, align 8
  %13 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %4, align 8
  %14 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @CPU_FFS(i32* %15)
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.its_col*, %struct.its_col** %12, i64 %18
  %20 = load %struct.its_col*, %struct.its_col** %19, align 8
  store %struct.its_col* %20, %struct.its_col** %7, align 8
  %21 = load i32, i32* @ITS_CMD_MOVI, align 4
  %22 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %6, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %4, align 8
  %24 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %27, align 8
  %28 = load %struct.its_col*, %struct.its_col** %7, align 8
  %29 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store %struct.its_col* %28, %struct.its_col** %30, align 8
  %31 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %4, align 8
  %32 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %4, align 8
  %35 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %33, %39
  %41 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %6, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @its_cmd_send(i32 %43, %struct.its_cmd_desc* %6)
  ret void
}

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @its_cmd_send(i32, %struct.its_cmd_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
