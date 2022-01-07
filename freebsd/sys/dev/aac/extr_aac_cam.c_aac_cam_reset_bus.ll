; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_reset_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { i32 }
%struct.aac_fib = type { i32* }
%struct.aac_softc = type { i32, i32 }
%struct.aac_cam = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.aac_softc* }
%struct.aac_vmioctl = type { i32*, i32, i64, i32, i32, i32 }
%struct.aac_resetbus = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"aac: Null sc?\0A\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@VM_Ioctl = common dso_local global i32 0, align 4
@FT_DRIVE = common dso_local global i32 0, align 4
@ResetBus = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Error %d sending ResetBus command\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_sim*, %union.ccb*)* @aac_cam_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_cam_reset_bus(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_sim*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.aac_fib*, align 8
  %7 = alloca %struct.aac_softc*, align 8
  %8 = alloca %struct.aac_cam*, align 8
  %9 = alloca %struct.aac_vmioctl*, align 8
  %10 = alloca %struct.aac_resetbus*, align 8
  %11 = alloca i32, align 4
  store %struct.cam_sim* %0, %struct.cam_sim** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %12 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %13 = call i64 @cam_sim_softc(%struct.cam_sim* %12)
  %14 = inttoptr i64 %13 to %struct.aac_cam*
  store %struct.aac_cam* %14, %struct.aac_cam** %8, align 8
  %15 = load %struct.aac_cam*, %struct.aac_cam** %8, align 8
  %16 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.aac_softc*, %struct.aac_softc** %18, align 8
  store %struct.aac_softc* %19, %struct.aac_softc** %7, align 8
  %20 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %21 = icmp eq %struct.aac_softc* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @CAM_REQ_ABORTED, align 4
  store i32 %24, i32* %3, align 4
  br label %82

25:                                               ; preds = %2
  %26 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %27 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %26, %struct.aac_fib** %6)
  %28 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %29 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = bitcast i32* %31 to %struct.aac_vmioctl*
  store %struct.aac_vmioctl* %32, %struct.aac_vmioctl** %9, align 8
  %33 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %9, align 8
  %34 = call i32 @bzero(%struct.aac_vmioctl* %33, i32 40)
  %35 = load i32, i32* @VM_Ioctl, align 4
  %36 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %9, align 8
  %37 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @FT_DRIVE, align 4
  %39 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %9, align 8
  %40 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %42 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %9, align 8
  %45 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %9, align 8
  %47 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @ResetBus, align 4
  %49 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %9, align 8
  %50 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %9, align 8
  %52 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = bitcast i32* %54 to %struct.aac_resetbus*
  store %struct.aac_resetbus* %55, %struct.aac_resetbus** %10, align 8
  %56 = load %struct.aac_cam*, %struct.aac_cam** %8, align 8
  %57 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.aac_resetbus*, %struct.aac_resetbus** %10, align 8
  %62 = getelementptr inbounds %struct.aac_resetbus, %struct.aac_resetbus* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %64 = load i32, i32* @ContainerCommand, align 4
  %65 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %66 = call i32 @aac_sync_fib(%struct.aac_softc* %63, i32 %64, i32 0, %struct.aac_fib* %65, i32 40)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %25
  %70 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %71 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %76 = call i32 @aac_release_sync_fib(%struct.aac_softc* %75)
  %77 = load i32, i32* @CAM_REQ_ABORTED, align 4
  store i32 %77, i32* %3, align 4
  br label %82

78:                                               ; preds = %25
  %79 = load %struct.aac_softc*, %struct.aac_softc** %7, align 8
  %80 = call i32 @aac_release_sync_fib(%struct.aac_softc* %79)
  %81 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %69, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @aac_alloc_sync_fib(%struct.aac_softc*, %struct.aac_fib**) #1

declare dso_local i32 @bzero(%struct.aac_vmioctl*, i32) #1

declare dso_local i32 @aac_sync_fib(%struct.aac_softc*, i32, i32, %struct.aac_fib*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @aac_release_sync_fib(%struct.aac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
