; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32* }
%struct.aac_cam = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.aac_softc* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aac_cam_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_cam_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.aac_cam*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %6 = call i32 @fwprintf(i32* null, i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @device_get_softc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.aac_cam*
  store %struct.aac_cam* %9, %struct.aac_cam** %4, align 8
  %10 = load %struct.aac_cam*, %struct.aac_cam** %4, align 8
  %11 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  store %struct.aac_softc* %14, %struct.aac_softc** %3, align 8
  %15 = load %struct.aac_cam*, %struct.aac_cam** %4, align 8
  %16 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %20 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load i32, i32* @AC_LOST_DEVICE, align 4
  %23 = load %struct.aac_cam*, %struct.aac_cam** %4, align 8
  %24 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @xpt_async(i32 %22, i32 %25, i32* null)
  %27 = load %struct.aac_cam*, %struct.aac_cam** %4, align 8
  %28 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @xpt_free_path(i32 %29)
  %31 = load %struct.aac_cam*, %struct.aac_cam** %4, align 8
  %32 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cam_sim_path(i32 %33)
  %35 = call i32 @xpt_bus_deregister(i32 %34)
  %36 = load %struct.aac_cam*, %struct.aac_cam** %4, align 8
  %37 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i32 @cam_sim_free(i32 %38, i32 %39)
  %41 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %42 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %44 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %43, i32 0, i32 0
  %45 = call i32 @mtx_unlock(i32* %44)
  ret i32 0
}

declare dso_local i32 @fwprintf(i32*, i8*, i8*) #1

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @xpt_async(i32, i32, i32*) #1

declare dso_local i32 @xpt_free_path(i32) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @cam_sim_free(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
