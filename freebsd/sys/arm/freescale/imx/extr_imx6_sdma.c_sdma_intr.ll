; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_sdma.c_sdma_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_sdma.c_sdma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_buffer_descriptor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sdma_channel = type { %struct.sdma_buffer_descriptor*, %struct.sdma_conf* }
%struct.sdma_conf = type { i32, i32, i32 (i32, i32)* }
%struct.sdma_softc = type { %struct.sdma_channel* }

@SDMAARM_INTR = common dso_local global i32 0, align 4
@SDMA_N_CHANNELS = common dso_local global i32 0, align 4
@BD_DONE = common dso_local global i32 0, align 4
@BD_RROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sDMA error\0A\00", align 1
@SDMAARM_HSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sdma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sdma_buffer_descriptor*, align 8
  %4 = alloca %struct.sdma_channel*, align 8
  %5 = alloca %struct.sdma_conf*, align 8
  %6 = alloca %struct.sdma_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.sdma_softc*
  store %struct.sdma_softc* %11, %struct.sdma_softc** %6, align 8
  %12 = load %struct.sdma_softc*, %struct.sdma_softc** %6, align 8
  %13 = load i32, i32* @SDMAARM_INTR, align 4
  %14 = call i32 @READ4(%struct.sdma_softc* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sdma_softc*, %struct.sdma_softc** %6, align 8
  %16 = load i32, i32* @SDMAARM_INTR, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @WRITE4(%struct.sdma_softc* %15, i32 %16, i32 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %89, %1
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SDMA_N_CHANNELS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %92

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %89

30:                                               ; preds = %23
  %31 = load %struct.sdma_softc*, %struct.sdma_softc** %6, align 8
  %32 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %31, i32 0, i32 0
  %33 = load %struct.sdma_channel*, %struct.sdma_channel** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %33, i64 %35
  store %struct.sdma_channel* %36, %struct.sdma_channel** %4, align 8
  %37 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %38 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %37, i32 0, i32 1
  %39 = load %struct.sdma_conf*, %struct.sdma_conf** %38, align 8
  store %struct.sdma_conf* %39, %struct.sdma_conf** %5, align 8
  %40 = load %struct.sdma_conf*, %struct.sdma_conf** %5, align 8
  %41 = icmp ne %struct.sdma_conf* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  br label %89

43:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %73, %43
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.sdma_conf*, %struct.sdma_conf** %5, align 8
  %47 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = load %struct.sdma_channel*, %struct.sdma_channel** %4, align 8
  %52 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %51, i32 0, i32 0
  %53 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %53, i64 %55
  store %struct.sdma_buffer_descriptor* %56, %struct.sdma_buffer_descriptor** %3, align 8
  %57 = load i32, i32* @BD_DONE, align 4
  %58 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %3, align 8
  %59 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %3, align 8
  %64 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @BD_RROR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %50
  %71 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %50
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %44

76:                                               ; preds = %44
  %77 = load %struct.sdma_conf*, %struct.sdma_conf** %5, align 8
  %78 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %77, i32 0, i32 2
  %79 = load i32 (i32, i32)*, i32 (i32, i32)** %78, align 8
  %80 = load %struct.sdma_conf*, %struct.sdma_conf** %5, align 8
  %81 = getelementptr inbounds %struct.sdma_conf, %struct.sdma_conf* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 %79(i32 %82, i32 1)
  %84 = load %struct.sdma_softc*, %struct.sdma_softc** %6, align 8
  %85 = load i32, i32* @SDMAARM_HSTART, align 4
  %86 = load i32, i32* %8, align 4
  %87 = shl i32 1, %86
  %88 = call i32 @WRITE4(%struct.sdma_softc* %84, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %76, %42, %29
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %19

92:                                               ; preds = %19
  ret void
}

declare dso_local i32 @READ4(%struct.sdma_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.sdma_softc*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
