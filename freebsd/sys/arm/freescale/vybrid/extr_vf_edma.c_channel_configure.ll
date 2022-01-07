; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_edma.c_channel_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_edma.c_channel_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_channel = type { i32, i32, i32, i32 }
%struct.edma_softc = type { i32 }

@NCHAN_PER_MUX = common dso_local global i32 0, align 4
@edma_map = common dso_local global %struct.edma_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edma_softc*, i32, i32)* @channel_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_configure(%struct.edma_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.edma_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.edma_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.edma_softc* %0, %struct.edma_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.edma_softc*, %struct.edma_softc** %5, align 8
  %14 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %28, label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.edma_softc*, %struct.edma_softc** %5, align 8
  %22 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25, %17
  %29 = load i32, i32* @NCHAN_PER_MUX, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.edma_softc*, %struct.edma_softc** %5, align 8
  %31 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %40

35:                                               ; preds = %25, %20
  store i32 0, i32* %9, align 4
  %36 = load %struct.edma_softc*, %struct.edma_softc** %5, align 8
  %37 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 2
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %35, %28
  store %struct.edma_channel* null, %struct.edma_channel** %8, align 8
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %59, %40
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @NCHAN_PER_MUX, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.edma_channel*, %struct.edma_channel** @edma_map, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %49, i64 %51
  store %struct.edma_channel* %52, %struct.edma_channel** %8, align 8
  %53 = load %struct.edma_channel*, %struct.edma_channel** %8, align 8
  %54 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %62

58:                                               ; preds = %48
  store %struct.edma_channel* null, %struct.edma_channel** %8, align 8
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %42

62:                                               ; preds = %57, %42
  %63 = load %struct.edma_channel*, %struct.edma_channel** %8, align 8
  %64 = icmp eq %struct.edma_channel* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %92

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %11, align 4
  %68 = load %struct.edma_channel*, %struct.edma_channel** %8, align 8
  %69 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.edma_channel*, %struct.edma_channel** %8, align 8
  %72 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.edma_channel*, %struct.edma_channel** %8, align 8
  %75 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load %struct.edma_channel*, %struct.edma_channel** %8, align 8
  %80 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.edma_channel*, %struct.edma_channel** %8, align 8
  %82 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.edma_channel*, %struct.edma_channel** %8, align 8
  %85 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.edma_channel*, %struct.edma_channel** %8, align 8
  %88 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dmamux_configure(i32 %83, i32 %86, i32 %89, i32 1)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %66, %65
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @dmamux_configure(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
