; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_proto_debug_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_proto_debug_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.cam_ed* }
%struct.cam_ed = type { i32 }

@SCSI_MAX_CDBLEN = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@CAM_DEBUG_CDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s. CDB: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @scsi_proto_debug_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_proto_debug_out(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cam_ed*, align 8
  %6 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %2, align 8
  %7 = load i32, i32* @SCSI_MAX_CDBLEN, align 4
  %8 = mul nsw i32 %7, 3
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %union.ccb*, %union.ccb** %2, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @XPT_SCSI_IO, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %48

20:                                               ; preds = %1
  %21 = load %union.ccb*, %union.ccb** %2, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.cam_ed*, %struct.cam_ed** %25, align 8
  store %struct.cam_ed* %26, %struct.cam_ed** %5, align 8
  %27 = load %union.ccb*, %union.ccb** %2, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* @CAM_DEBUG_CDB, align 4
  %32 = load %union.ccb*, %union.ccb** %2, align 8
  %33 = bitcast %union.ccb* %32 to i32*
  %34 = call i32* @scsiio_cdb_ptr(i32* %33)
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %38 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %37, i32 0, i32 0
  %39 = call i32 @scsi_op_desc(i32 %36, i32* %38)
  %40 = load %union.ccb*, %union.ccb** %2, align 8
  %41 = bitcast %union.ccb* %40 to i32*
  %42 = call i32* @scsiio_cdb_ptr(i32* %41)
  %43 = trunc i64 %10 to i32
  %44 = call i32 @scsi_cdb_string(i32* %42, i8* %12, i32 %43)
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @CAM_DEBUG(%struct.TYPE_4__* %30, i32 %31, i8* %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %20, %19
  %49 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %52 [
    i32 0, label %51
    i32 1, label %51
  ]

51:                                               ; preds = %48, %48
  ret void

52:                                               ; preds = %48
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CAM_DEBUG(%struct.TYPE_4__*, i32, i8*) #2

declare dso_local i32 @scsi_op_desc(i32, i32*) #2

declare dso_local i32* @scsiio_cdb_ptr(i32*) #2

declare dso_local i32 @scsi_cdb_string(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
