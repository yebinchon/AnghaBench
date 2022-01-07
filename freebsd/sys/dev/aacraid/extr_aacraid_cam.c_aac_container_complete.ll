; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_container_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_container_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_command = type { i32, %struct.TYPE_3__*, %union.ccb*, i32 }
%struct.TYPE_3__ = type { i64 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_CMD_RESET = common dso_local global i32 0, align 4
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@ST_OK = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@ST_NOT_READY = common dso_local global i64 0, align 8
@CAM_BUSY = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_command*)* @aac_container_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_container_complete(%struct.aac_command* %0) #0 {
  %2 = alloca %struct.aac_command*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca i64, align 8
  store %struct.aac_command* %0, %struct.aac_command** %2, align 8
  %5 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %6 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %9 = call i32 @fwprintf(i32 %7, i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %11 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %10, i32 0, i32 2
  %12 = load %union.ccb*, %union.ccb** %11, align 8
  store %union.ccb* %12, %union.ccb** %3, align 8
  %13 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %14 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i64*
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %22 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AAC_CMD_RESET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  %29 = load %union.ccb*, %union.ccb** %3, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %57

32:                                               ; preds = %1
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @ST_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @CAM_REQ_CMP, align 4
  %38 = load %union.ccb*, %union.ccb** %3, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  br label %56

41:                                               ; preds = %32
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @ST_NOT_READY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* @CAM_BUSY, align 4
  %47 = load %union.ccb*, %union.ccb** %3, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %52 = load %union.ccb*, %union.ccb** %3, align 8
  %53 = bitcast %union.ccb* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56, %27
  %58 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %59 = call i32 @aacraid_release_command(%struct.aac_command* %58)
  %60 = load %union.ccb*, %union.ccb** %3, align 8
  %61 = call i32 @xpt_done(%union.ccb* %60)
  ret void
}

declare dso_local i32 @fwprintf(i32, i8*, i8*) #1

declare dso_local i32 @aacraid_release_command(%struct.aac_command*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
