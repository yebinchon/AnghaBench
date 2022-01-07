; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_command = type { %struct.TYPE_4__*, %union.ccb*, %struct.aac_softc* }
%struct.TYPE_4__ = type { i32* }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.aac_softc = type { i32 }
%struct.aac_srb_response = type { i64, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Passthru FIB failed!\0A\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_command*)* @aac_cam_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_cam_complete(%struct.aac_command* %0) #0 {
  %2 = alloca %struct.aac_command*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.aac_srb_response*, align 8
  %5 = alloca %struct.aac_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.aac_command* %0, %struct.aac_command** %2, align 8
  %7 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %8 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %7, i32 0, i32 2
  %9 = load %struct.aac_softc*, %struct.aac_softc** %8, align 8
  store %struct.aac_softc* %9, %struct.aac_softc** %5, align 8
  %10 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %11 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %12 = call i32 @fwprintf(%struct.aac_softc* %10, i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %14 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %13, i32 0, i32 1
  %15 = load %union.ccb*, %union.ccb** %14, align 8
  store %union.ccb* %15, %union.ccb** %3, align 8
  %16 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %17 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = bitcast i32* %21 to %struct.aac_srb_response*
  store %struct.aac_srb_response* %22, %struct.aac_srb_response** %4, align 8
  %23 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %24 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %29 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %33 = load %union.ccb*, %union.ccb** %3, align 8
  %34 = bitcast %union.ccb* %33 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  br label %114

36:                                               ; preds = %1
  %37 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %38 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %union.ccb*, %union.ccb** %3, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load %union.ccb*, %union.ccb** %3, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XPT_SCSI_IO, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %113

49:                                               ; preds = %36
  %50 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %51 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %union.ccb*, %union.ccb** %3, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %57 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %109

60:                                               ; preds = %49
  %61 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %62 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %union.ccb*, %union.ccb** %3, align 8
  %66 = bitcast %union.ccb* %65 to %struct.TYPE_5__*
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = load %union.ccb*, %union.ccb** %3, align 8
  %72 = bitcast %union.ccb* %71 to %struct.TYPE_5__*
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load %union.ccb*, %union.ccb** %3, align 8
  %78 = bitcast %union.ccb* %77 to %struct.TYPE_5__*
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  br label %84

80:                                               ; preds = %60
  %81 = load %union.ccb*, %union.ccb** %3, align 8
  %82 = bitcast %union.ccb* %81 to %struct.TYPE_5__*
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %70
  %85 = load %union.ccb*, %union.ccb** %3, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_5__*
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = call i32 @bzero(i32* %87, i32 4)
  %89 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %90 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load %union.ccb*, %union.ccb** %3, align 8
  %94 = bitcast %union.ccb* %93 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load %union.ccb*, %union.ccb** %3, align 8
  %97 = bitcast %union.ccb* %96 to %struct.TYPE_5__*
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @min(i32 %99, i32 %100)
  %102 = call i32 @bcopy(i32* %92, i32* %95, i32 %101)
  %103 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %104 = load %union.ccb*, %union.ccb** %3, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_6__*
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %103
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %84, %49
  %110 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %111 = load %union.ccb*, %union.ccb** %3, align 8
  %112 = call i32 @aac_cam_fix_inquiry(%struct.aac_softc* %110, %union.ccb* %111)
  br label %113

113:                                              ; preds = %109, %36
  br label %114

114:                                              ; preds = %113, %27
  %115 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %116 = call i32 @aac_release_command(%struct.aac_command* %115)
  %117 = load %union.ccb*, %union.ccb** %3, align 8
  %118 = call i32 @xpt_done(%union.ccb* %117)
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @aac_cam_fix_inquiry(%struct.aac_softc*, %union.ccb*) #1

declare dso_local i32 @aac_release_command(%struct.aac_command*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
