; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhasync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_targ_bh.c_targbhasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.ccb_pathinq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cam_periph = type { i32 }

@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"targbhasync: Unable to create path due to status 0x%x\0A\00", align 1
@PIT_PROCESSOR = common dso_local global i32 0, align 4
@targbhctor = common dso_local global i32 0, align 4
@targbhdtor = common dso_local global i32 0, align 4
@targbhstart = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"targbh\00", align 1
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cam_path*, i8*)* @targbhasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @targbhasync(i8* %0, i32 %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cam_path*, align 8
  %10 = alloca %struct.ccb_pathinq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.cam_periph*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %15, %struct.ccb_pathinq** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %20 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  br label %26

23:                                               ; preds = %4
  %24 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %25 = call i32 @xpt_path_path_id(%struct.cam_path* %24)
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %29 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %30 = call i64 @xpt_create_path(%struct.cam_path** %9, i32* null, i32 %27, i32 %28, i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @CAM_REQ_CMP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %67

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %63 [
    i32 128, label %39
    i32 129, label %55
  ]

39:                                               ; preds = %37
  %40 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %41 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PIT_PROCESSOR, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %64

47:                                               ; preds = %39
  %48 = load i32, i32* @targbhctor, align 4
  %49 = load i32, i32* @targbhdtor, align 4
  %50 = load i32, i32* @targbhstart, align 4
  %51 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %52 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %53 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %54 = call i64 @cam_periph_alloc(i32 %48, i32* null, i32 %49, i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %51, %struct.cam_path* %52, void (i8*, i32, %struct.cam_path*, i8*)* @targbhasync, i32 128, %struct.ccb_pathinq* %53)
  store i64 %54, i64* %12, align 8
  br label %64

55:                                               ; preds = %37
  %56 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %57 = call %struct.cam_periph* @cam_periph_find(%struct.cam_path* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cam_periph* %57, %struct.cam_periph** %13, align 8
  %58 = icmp ne %struct.cam_periph* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.cam_periph*, %struct.cam_periph** %13, align 8
  %61 = call i32 @cam_periph_invalidate(%struct.cam_periph* %60)
  br label %62

62:                                               ; preds = %59, %55
  br label %64

63:                                               ; preds = %37
  br label %64

64:                                               ; preds = %63, %62, %47, %46
  %65 = load %struct.cam_path*, %struct.cam_path** %9, align 8
  %66 = call i32 @xpt_free_path(%struct.cam_path* %65)
  br label %67

67:                                               ; preds = %64, %34
  ret void
}

declare dso_local i32 @xpt_path_path_id(%struct.cam_path*) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i64 @cam_periph_alloc(i32, i32*, i32, i32, i8*, i32, %struct.cam_path*, void (i8*, i32, %struct.cam_path*, i8*)*, i32, %struct.ccb_pathinq*) #1

declare dso_local %struct.cam_periph* @cam_periph_find(%struct.cam_path*, i8*) #1

declare dso_local i32 @cam_periph_invalidate(%struct.cam_periph*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
