; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcam/extr_scsi_cmdparse.c_csio_build_visit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcam/extr_scsi_cmdparse.c_csio_build_visit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SCSI_MAX_CDBLEN = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csio_build_visit(%struct.ccb_scsiio* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 (i8*, i8*)* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ccb_scsiio*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32 (i8*, i8*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 (i8*, i8*)* %7, i32 (i8*, i8*)** %18, align 8
  store i8* %8, i8** %19, align 8
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %23 = icmp eq %struct.ccb_scsiio* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %62

25:                                               ; preds = %9
  %26 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %18, align 8
  %27 = icmp eq i32 (i8*, i8*)* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %10, align 4
  br label %62

29:                                               ; preds = %25
  %30 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %31 = call i32 @bzero(%struct.ccb_scsiio* %30, i32 4)
  %32 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %33 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SCSI_MAX_CDBLEN, align 4
  %37 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %18, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = call i32 @do_encode(i32 %35, i32 %36, i64* %20, i32 (i8*, i8*)* %37, i8* %38, i8* %39, i32* null)
  store i32 %40, i32* %21, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %21, align 4
  store i32 %43, i32* %10, align 4
  br label %62

44:                                               ; preds = %29
  %45 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @SSD_FULL_SIZE, align 4
  %52 = load i64, i64* %20, align 8
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %16, align 4
  br label %58

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 5000, %57 ]
  %60 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %45, i32 %46, i32* null, i32 %47, i32 %48, i32* %49, i32 %50, i32 %51, i64 %52, i32 %59)
  %61 = load i32, i32* %21, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %42, %28, %24
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local i32 @bzero(%struct.ccb_scsiio*, i32) #1

declare dso_local i32 @do_encode(i32, i32, i64*, i32 (i8*, i8*)*, i8*, i8*, i32*) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, i32*, i32, i32, i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
