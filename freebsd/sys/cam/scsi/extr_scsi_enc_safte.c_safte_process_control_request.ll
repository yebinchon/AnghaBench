; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_process_control_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_process_control_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.scfg* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.scfg = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.enc_fsm_state = type { i32 }
%union.ccb = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SES_SETSTATUS_ENC_IDX = common dso_local global i32 0, align 4
@ELMTYP_DEVICE = common dso_local global i32 0, align 4
@ELMTYP_ARRAY_DEV = common dso_local global i32 0, align 4
@SAFTE_UPDATE_READSLOTSTATUS = common dso_local global i32 0, align 4
@SAFTE_UPDATE_READENCSTATUS = common dso_local global i32 0, align 4
@SAFTE_PROCESS_CONTROL_REQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.enc_fsm_state*, %union.ccb*, i32**, i32, i32)* @safte_process_control_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safte_process_control_request(%struct.TYPE_11__* %0, %struct.enc_fsm_state* %1, %union.ccb* %2, i32** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.enc_fsm_state*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.scfg*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.enc_fsm_state* %1, %struct.enc_fsm_state** %9, align 8
  store %union.ccb* %2, %union.ccb** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.scfg*, %struct.scfg** %19, align 8
  store %struct.scfg* %20, %struct.scfg** %14, align 8
  %21 = load %struct.scfg*, %struct.scfg** %14, align 8
  %22 = icmp eq %struct.scfg* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %7, align 4
  br label %90

25:                                               ; preds = %6
  %26 = load %struct.scfg*, %struct.scfg** %14, align 8
  %27 = getelementptr inbounds %struct.scfg, %struct.scfg* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %15, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.scfg*, %struct.scfg** %14, align 8
  %39 = getelementptr inbounds %struct.scfg, %struct.scfg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.scfg*, %struct.scfg** %14, align 8
  %43 = getelementptr inbounds %struct.scfg, %struct.scfg* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %37
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @SES_SETSTATUS_ENC_IDX, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 -1, i32* %17, align 4
  br label %64

54:                                               ; preds = %46
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %17, align 4
  br label %64

64:                                               ; preds = %54, %53
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @ELMTYP_DEVICE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* @ELMTYP_ARRAY_DEV, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %64
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = load i32, i32* @SAFTE_UPDATE_READSLOTSTATUS, align 4
  %75 = call i32 @enc_update_request(%struct.TYPE_11__* %73, i32 %74)
  br label %80

76:                                               ; preds = %68
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = load i32, i32* @SAFTE_UPDATE_READENCSTATUS, align 4
  %79 = call i32 @enc_update_request(%struct.TYPE_11__* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.scfg*, %struct.scfg** %14, align 8
  %82 = getelementptr inbounds %struct.scfg, %struct.scfg* %81, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %84 = call i32 @wakeup(%struct.TYPE_10__* %83)
  br label %89

85:                                               ; preds = %37
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = load i32, i32* @SAFTE_PROCESS_CONTROL_REQS, align 4
  %88 = call i32 @enc_update_request(%struct.TYPE_11__* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %80
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %23
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @enc_update_request(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @wakeup(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
