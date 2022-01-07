; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_device_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_dev = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.gicv3_its_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"its_device_release: Trying to release an inuse ITS device\00", align 1
@entry = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid ITT in valid ITS device\00", align 1
@M_GICV3_ITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.its_dev*)* @its_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_device_release(i32 %0, %struct.its_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.its_dev*, align 8
  %5 = alloca %struct.gicv3_its_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.its_dev* %1, %struct.its_dev** %4, align 8
  %6 = load %struct.its_dev*, %struct.its_dev** %4, align 8
  %7 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.its_dev*, %struct.its_dev** %4, align 8
  %15 = call i32 @its_cmd_mapd(i32 %13, %struct.its_dev* %14, i32 0)
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.gicv3_its_softc* @device_get_softc(i32 %16)
  store %struct.gicv3_its_softc* %17, %struct.gicv3_its_softc** %5, align 8
  %18 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %19 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %18, i32 0, i32 1
  %20 = call i32 @mtx_lock_spin(i32* %19)
  %21 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %22 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %21, i32 0, i32 2
  %23 = load %struct.its_dev*, %struct.its_dev** %4, align 8
  %24 = load i32, i32* @entry, align 4
  %25 = call i32 @TAILQ_REMOVE(i32* %22, %struct.its_dev* %23, i32 %24)
  %26 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %27 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %26, i32 0, i32 1
  %28 = call i32 @mtx_unlock_spin(i32* %27)
  %29 = load %struct.its_dev*, %struct.its_dev** %4, align 8
  %30 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.its_dev*, %struct.its_dev** %4, align 8
  %36 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.its_dev*, %struct.its_dev** %4, align 8
  %40 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @M_GICV3_ITS, align 4
  %43 = call i32 @contigfree(i8* %38, i32 %41, i32 %42)
  %44 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %45 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.its_dev*, %struct.its_dev** %4, align 8
  %48 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.its_dev*, %struct.its_dev** %4, align 8
  %52 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @vmem_free(i32 %46, i32 %50, i32 %54)
  %56 = load %struct.its_dev*, %struct.its_dev** %4, align 8
  %57 = load i32, i32* @M_GICV3_ITS, align 4
  %58 = call i32 @free(%struct.its_dev* %56, i32 %57)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @its_cmd_mapd(i32, %struct.its_dev*, i32) #1

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.its_dev*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @contigfree(i8*, i32, i32) #1

declare dso_local i32 @vmem_free(i32, i32, i32) #1

declare dso_local i32 @free(%struct.its_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
