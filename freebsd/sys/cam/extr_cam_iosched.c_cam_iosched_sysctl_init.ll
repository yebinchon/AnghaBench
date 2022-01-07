; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_iosched_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.sysctl_ctx_list, %struct.sysctl_oid*, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sort_io_queue\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Sort IO queue to try and optimise disk access patterns\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"trim_goal\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Number of trims to try to accumulate before sending to hardware\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"trim_ticks\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"IO Schedul qaunta to hold back trims for when accumulating\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@cam_iosched_quanta_sysctl = common dso_local global i32 0, align 4
@do_dynamic_iosched = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_iosched_sysctl_init(%struct.cam_iosched_softc* %0, %struct.sysctl_ctx_list* %1, %struct.sysctl_oid* %2) #0 {
  %4 = alloca %struct.cam_iosched_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.cam_iosched_softc* %0, %struct.cam_iosched_softc** %4, align 8
  store %struct.sysctl_ctx_list* %1, %struct.sysctl_ctx_list** %5, align 8
  store %struct.sysctl_oid* %2, %struct.sysctl_oid** %6, align 8
  %8 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %9 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %8)
  store %struct.sysctl_oid_list* %9, %struct.sysctl_oid_list** %7, align 8
  %10 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %11 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLFLAG_RW, align 4
  %14 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %4, align 8
  %17 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %16, i32 0, i32 11
  %18 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %10, %struct.sysctl_oid_list* %11, i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15, i32* %17, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %20 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RW, align 4
  %23 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %4, align 8
  %24 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %23, i32 0, i32 10
  %25 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %19, %struct.sysctl_oid_list* %20, i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32* %24, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %27 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RW, align 4
  %30 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %4, align 8
  %31 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %30, i32 0, i32 10
  %32 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %26, %struct.sysctl_oid_list* %27, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32* %31, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
