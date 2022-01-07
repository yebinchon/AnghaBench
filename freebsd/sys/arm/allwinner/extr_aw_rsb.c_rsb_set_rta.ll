; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rsb.c_rsb_set_rta.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rsb.c_rsb_set_rta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.rsb_softc = type { i32 }

@rsb_rtamap = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"RTA not known for address %#x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RSB_INTS = common dso_local global i32 0, align 4
@RSB_DAR = common dso_local global i32 0, align 4
@DAR_DA_SHIFT = common dso_local global i32 0, align 4
@DAR_RTA_SHIFT = common dso_local global i32 0, align 4
@RSB_CMD = common dso_local global i32 0, align 4
@CMD_SRTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rsb_set_rta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsb_set_rta(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsb_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.rsb_softc* @device_get_softc(i32 %9)
  store %struct.rsb_softc* %10, %struct.rsb_softc** %6, align 8
  %11 = load %struct.rsb_softc*, %struct.rsb_softc** %6, align 8
  %12 = call i32 @RSB_ASSERT_LOCKED(%struct.rsb_softc* %11)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %39, %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rsb_rtamap, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %13
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rsb_rtamap, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rsb_rtamap, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %42

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %13

42:                                               ; preds = %30, %13
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %3, align 4
  br label %73

50:                                               ; preds = %42
  %51 = load %struct.rsb_softc*, %struct.rsb_softc** %6, align 8
  %52 = load i32, i32* @RSB_INTS, align 4
  %53 = load %struct.rsb_softc*, %struct.rsb_softc** %6, align 8
  %54 = load i32, i32* @RSB_INTS, align 4
  %55 = call i32 @RSB_READ(%struct.rsb_softc* %53, i32 %54)
  %56 = call i32 @RSB_WRITE(%struct.rsb_softc* %51, i32 %52, i32 %55)
  %57 = load %struct.rsb_softc*, %struct.rsb_softc** %6, align 8
  %58 = load i32, i32* @RSB_DAR, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @DAR_DA_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @DAR_RTA_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %61, %64
  %66 = call i32 @RSB_WRITE(%struct.rsb_softc* %57, i32 %58, i32 %65)
  %67 = load %struct.rsb_softc*, %struct.rsb_softc** %6, align 8
  %68 = load i32, i32* @RSB_CMD, align 4
  %69 = load i32, i32* @CMD_SRTA, align 4
  %70 = call i32 @RSB_WRITE(%struct.rsb_softc* %67, i32 %68, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @rsb_start(i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %50, %45
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.rsb_softc* @device_get_softc(i32) #1

declare dso_local i32 @RSB_ASSERT_LOCKED(%struct.rsb_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @RSB_WRITE(%struct.rsb_softc*, i32, i32) #1

declare dso_local i32 @RSB_READ(%struct.rsb_softc*, i32) #1

declare dso_local i32 @rsb_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
