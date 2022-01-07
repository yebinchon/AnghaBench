; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_detach.c"
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
  %3 = alloca i32, align 4
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca %struct.aac_cam*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @device_get_softc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.aac_cam*
  store %struct.aac_cam* %8, %struct.aac_cam** %5, align 8
  %9 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %10 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

14:                                               ; preds = %1
  %15 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %16 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.aac_softc*, %struct.aac_softc** %18, align 8
  store %struct.aac_softc* %19, %struct.aac_softc** %4, align 8
  %20 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %21 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %22 = call i32 @fwprintf(%struct.aac_softc* %20, i8* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %24 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 0
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load i32, i32* @AC_LOST_DEVICE, align 4
  %31 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %32 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xpt_async(i32 %30, i32 %33, i32* null)
  %35 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %36 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @xpt_free_path(i32 %37)
  %39 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %40 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cam_sim_path(i32 %41)
  %43 = call i32 @xpt_bus_deregister(i32 %42)
  %44 = load %struct.aac_cam*, %struct.aac_cam** %5, align 8
  %45 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @cam_sim_free(i32 %46, i32 %47)
  %49 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %50 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %52 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %51, i32 0, i32 0
  %53 = call i32 @mtx_unlock(i32* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %14, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

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
