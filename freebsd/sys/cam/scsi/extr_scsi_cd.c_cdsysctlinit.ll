; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdsysctlinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_cd.c_cdsysctlinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i64 }
%struct.cd_softc = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"CAM CD unit %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CD_FLAG_SCTX_INIT = common dso_local global i32 0, align 4
@_kern_cam_cd = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"device_index\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"cdsysctlinit: unable to allocate sysctl tree\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"minimum_cmd_size\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@cdcmdsizesysctl = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Minimum CDB size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @cdsysctlinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdsysctlinit(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_periph*, align 8
  %6 = alloca %struct.cd_softc*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca [16 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.cam_periph*
  store %struct.cam_periph* %10, %struct.cam_periph** %5, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %12 = call i64 @cam_periph_acquire(%struct.cam_periph* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %74

15:                                               ; preds = %2
  %16 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %17 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.cd_softc*
  store %struct.cd_softc* %19, %struct.cd_softc** %6, align 8
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %21 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %22 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @snprintf(i8* %20, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %26 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %27 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snprintf(i8* %25, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %31 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %30, i32 0, i32 2
  %32 = call i32 @sysctl_ctx_init(i32* %31)
  %33 = load i32, i32* @CD_FLAG_SCTX_INIT, align 4
  %34 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %35 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %39 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %38, i32 0, i32 2
  %40 = load i32, i32* @_kern_cam_cd, align 4
  %41 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %40)
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %44 = load i32, i32* @CTLFLAG_RD, align 4
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %46 = call i32* @SYSCTL_ADD_NODE_WITH_LABEL(i32* %39, i32 %41, i32 %42, i8* %43, i32 %44, i32 0, i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %48 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %50 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %15
  %54 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %56 = call i32 @cam_periph_release(%struct.cam_periph* %55)
  br label %74

57:                                               ; preds = %15
  %58 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %59 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %58, i32 0, i32 2
  %60 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %61 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @SYSCTL_CHILDREN(i32* %62)
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLTYPE_INT, align 4
  %66 = load i32, i32* @CTLFLAG_RW, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.cd_softc*, %struct.cd_softc** %6, align 8
  %69 = getelementptr inbounds %struct.cd_softc, %struct.cd_softc* %68, i32 0, i32 0
  %70 = load i32, i32* @cdcmdsizesysctl, align 4
  %71 = call i32 @SYSCTL_ADD_PROC(i32* %59, i32 %63, i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32* %69, i32 0, i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %72 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %73 = call i32 @cam_periph_release(%struct.cam_periph* %72)
  br label %74

74:                                               ; preds = %57, %53, %14
  ret void
}

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32* @SYSCTL_ADD_NODE_WITH_LABEL(i32*, i32, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @cam_periph_release(%struct.cam_periph*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
