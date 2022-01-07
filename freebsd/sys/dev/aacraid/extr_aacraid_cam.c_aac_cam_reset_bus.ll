; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_reset_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_reset_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.aac_cam* }
%struct.aac_cam = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.aac_softc* }
%struct.aac_softc = type { i32, i32 }
%struct.aac_command = type { i64, i32, %struct.aac_fib* }
%struct.aac_fib = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.aac_vmioctl = type { i32*, i32, i64, i32, i32, i32 }
%struct.aac_resetbus = type { i64 }
%struct.aac_event = type { i32, %union.ccb*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"aac: Null sc?\0A\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@CAM_RESRC_UNAVAIL = common dso_local global i32 0, align 4
@M_AACRAIDCAM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Warning, out of memory for event\0A\00", align 1
@aac_cam_event = common dso_local global i32 0, align 4
@AAC_EVENT_CMFREE = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@AAC_FIBSTATE_HOSTOWNED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_INITIALISED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_EMPTY = common dso_local global i32 0, align 4
@AAC_FIBSTATE_FROMHOST = common dso_local global i32 0, align 4
@AAC_FIBSTATE_REXPECTED = common dso_local global i32 0, align 4
@AAC_FIBSTATE_NORM = common dso_local global i32 0, align 4
@AAC_FIBSTATE_ASYNC = common dso_local global i32 0, align 4
@AAC_FIBSTATE_FAST_RESPONSE = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@VM_Ioctl = common dso_local global i32 0, align 4
@FT_DRIVE = common dso_local global i32 0, align 4
@ResetBus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Error sending ResetBus command\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_sim*, %union.ccb*)* @aac_cam_reset_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_cam_reset_bus(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_sim*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.aac_command*, align 8
  %7 = alloca %struct.aac_fib*, align 8
  %8 = alloca %struct.aac_softc*, align 8
  %9 = alloca %struct.aac_cam*, align 8
  %10 = alloca %struct.aac_vmioctl*, align 8
  %11 = alloca %struct.aac_resetbus*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.aac_event*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %14 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %15 = call i64 @cam_sim_softc(%struct.cam_sim* %14)
  %16 = inttoptr i64 %15 to %struct.aac_cam*
  store %struct.aac_cam* %16, %struct.aac_cam** %9, align 8
  %17 = load %struct.aac_cam*, %struct.aac_cam** %9, align 8
  %18 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.aac_softc*, %struct.aac_softc** %20, align 8
  store %struct.aac_softc* %21, %struct.aac_softc** %8, align 8
  %22 = load %struct.aac_softc*, %struct.aac_softc** %8, align 8
  %23 = icmp eq %struct.aac_softc* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @CAM_REQ_ABORTED, align 4
  store i32 %26, i32* %3, align 4
  br label %158

27:                                               ; preds = %2
  %28 = load %struct.aac_softc*, %struct.aac_softc** %8, align 8
  %29 = call i64 @aacraid_alloc_command(%struct.aac_softc* %28, %struct.aac_command** %6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %27
  %32 = load %struct.cam_sim*, %struct.cam_sim** %4, align 8
  %33 = call i32 @xpt_freeze_simq(%struct.cam_sim* %32, i32 1)
  %34 = load i32, i32* @CAM_RESRC_UNAVAIL, align 4
  %35 = load %union.ccb*, %union.ccb** %5, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  %38 = load %struct.aac_cam*, %struct.aac_cam** %9, align 8
  %39 = load %union.ccb*, %union.ccb** %5, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_8__*
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.aac_cam* %38, %struct.aac_cam** %45, align 8
  %46 = load i32, i32* @M_AACRAIDCAM, align 4
  %47 = load i32, i32* @M_NOWAIT, align 4
  %48 = load i32, i32* @M_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = call %struct.aac_event* @malloc(i32 24, i32 %46, i32 %49)
  store %struct.aac_event* %50, %struct.aac_event** %13, align 8
  %51 = load %struct.aac_event*, %struct.aac_event** %13, align 8
  %52 = icmp eq %struct.aac_event* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %31
  %54 = load %struct.aac_softc*, %struct.aac_softc** %8, align 8
  %55 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @CAM_REQ_ABORTED, align 4
  store i32 %58, i32* %3, align 4
  br label %158

59:                                               ; preds = %31
  %60 = load i32, i32* @aac_cam_event, align 4
  %61 = load %struct.aac_event*, %struct.aac_event** %13, align 8
  %62 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %union.ccb*, %union.ccb** %5, align 8
  %64 = load %struct.aac_event*, %struct.aac_event** %13, align 8
  %65 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %64, i32 0, i32 1
  store %union.ccb* %63, %union.ccb** %65, align 8
  %66 = load i32, i32* @AAC_EVENT_CMFREE, align 4
  %67 = load %struct.aac_event*, %struct.aac_event** %13, align 8
  %68 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.aac_softc*, %struct.aac_softc** %8, align 8
  %70 = load %struct.aac_event*, %struct.aac_event** %13, align 8
  %71 = call i32 @aacraid_add_event(%struct.aac_softc* %69, %struct.aac_event* %70)
  %72 = load i32, i32* @CAM_REQ_ABORTED, align 4
  store i32 %72, i32* %3, align 4
  br label %158

73:                                               ; preds = %27
  %74 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %75 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %74, i32 0, i32 2
  %76 = load %struct.aac_fib*, %struct.aac_fib** %75, align 8
  store %struct.aac_fib* %76, %struct.aac_fib** %7, align 8
  %77 = load i32, i32* @time_uptime, align 4
  %78 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %79 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %81 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %83 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 44, i32* %84, align 8
  %85 = load i32, i32* @AAC_FIBSTATE_HOSTOWNED, align 4
  %86 = load i32, i32* @AAC_FIBSTATE_INITIALISED, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @AAC_FIBSTATE_EMPTY, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @AAC_FIBSTATE_FROMHOST, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @AAC_FIBSTATE_REXPECTED, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @AAC_FIBSTATE_NORM, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @AAC_FIBSTATE_ASYNC, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @AAC_FIBSTATE_FAST_RESPONSE, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %101 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @ContainerCommand, align 4
  %104 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %105 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load %struct.aac_fib*, %struct.aac_fib** %7, align 8
  %108 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = bitcast i32* %110 to %struct.aac_vmioctl*
  store %struct.aac_vmioctl* %111, %struct.aac_vmioctl** %10, align 8
  %112 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %10, align 8
  %113 = call i32 @bzero(%struct.aac_vmioctl* %112, i32 40)
  %114 = load i32, i32* @VM_Ioctl, align 4
  %115 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %10, align 8
  %116 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @FT_DRIVE, align 4
  %118 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %10, align 8
  %119 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load %struct.aac_softc*, %struct.aac_softc** %8, align 8
  %121 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %10, align 8
  %124 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 8
  %125 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %10, align 8
  %126 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* @ResetBus, align 4
  %128 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %10, align 8
  %129 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.aac_vmioctl*, %struct.aac_vmioctl** %10, align 8
  %131 = getelementptr inbounds %struct.aac_vmioctl, %struct.aac_vmioctl* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = bitcast i32* %133 to %struct.aac_resetbus*
  store %struct.aac_resetbus* %134, %struct.aac_resetbus** %11, align 8
  %135 = load %struct.aac_cam*, %struct.aac_cam** %9, align 8
  %136 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %139, 1
  %141 = load %struct.aac_resetbus*, %struct.aac_resetbus** %11, align 8
  %142 = getelementptr inbounds %struct.aac_resetbus, %struct.aac_resetbus* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %144 = call i64 @aacraid_wait_command(%struct.aac_command* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %73
  %147 = load %struct.aac_softc*, %struct.aac_softc** %8, align 8
  %148 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* @CAM_REQ_ABORTED, align 4
  store i32 %151, i32* %12, align 4
  br label %154

152:                                              ; preds = %73
  %153 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %152, %146
  %155 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %156 = call i32 @aacraid_release_command(%struct.aac_command* %155)
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %59, %53, %24
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @aacraid_alloc_command(%struct.aac_softc*, %struct.aac_command**) #1

declare dso_local i32 @xpt_freeze_simq(%struct.cam_sim*, i32) #1

declare dso_local %struct.aac_event* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @aacraid_add_event(%struct.aac_softc*, %struct.aac_event*) #1

declare dso_local i32 @bzero(%struct.aac_vmioctl*, i32) #1

declare dso_local i64 @aacraid_wait_command(%struct.aac_command*) #1

declare dso_local i32 @aacraid_release_command(%struct.aac_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
