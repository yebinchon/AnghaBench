; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_inv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.gicv3_its_irqsrc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gicv3_its_softc = type { %struct.its_col** }
%struct.its_col = type { i32 }
%struct.its_cmd_desc = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.its_col*, %struct.its_dev*, i64 }

@ITS_CMD_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.its_dev*, %struct.gicv3_its_irqsrc*)* @its_cmd_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_cmd_inv(i32 %0, %struct.its_dev* %1, %struct.gicv3_its_irqsrc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.its_dev*, align 8
  %6 = alloca %struct.gicv3_its_irqsrc*, align 8
  %7 = alloca %struct.gicv3_its_softc*, align 8
  %8 = alloca %struct.its_cmd_desc, align 8
  %9 = alloca %struct.its_col*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.its_dev* %1, %struct.its_dev** %5, align 8
  store %struct.gicv3_its_irqsrc* %2, %struct.gicv3_its_irqsrc** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.gicv3_its_softc* @device_get_softc(i32 %10)
  store %struct.gicv3_its_softc* %11, %struct.gicv3_its_softc** %7, align 8
  %12 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %7, align 8
  %13 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %12, i32 0, i32 0
  %14 = load %struct.its_col**, %struct.its_col*** %13, align 8
  %15 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %6, align 8
  %16 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @CPU_FFS(i32* %17)
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.its_col*, %struct.its_col** %14, i64 %20
  %22 = load %struct.its_col*, %struct.its_col** %21, align 8
  store %struct.its_col* %22, %struct.its_col** %9, align 8
  %23 = load i32, i32* @ITS_CMD_INV, align 4
  %24 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %8, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load %struct.gicv3_its_irqsrc*, %struct.gicv3_its_irqsrc** %6, align 8
  %26 = getelementptr inbounds %struct.gicv3_its_irqsrc, %struct.gicv3_its_irqsrc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.its_dev*, %struct.its_dev** %5, align 8
  %29 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %27, %31
  %33 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.its_dev*, %struct.its_dev** %5, align 8
  %36 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store %struct.its_dev* %35, %struct.its_dev** %37, align 8
  %38 = load %struct.its_col*, %struct.its_col** %9, align 8
  %39 = getelementptr inbounds %struct.its_cmd_desc, %struct.its_cmd_desc* %8, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store %struct.its_col* %38, %struct.its_col** %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @its_cmd_send(i32 %41, %struct.its_cmd_desc* %8)
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
