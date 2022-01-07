; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chasync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_chasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.cam_periph = type { i32 }
%struct.ccb_getdev = type { i32, i32 }

@PROTO_SCSI = common dso_local global i32 0, align 4
@SID_QUAL_LU_CONNECTED = common dso_local global i32 0, align 4
@T_CHANGER = common dso_local global i32 0, align 4
@chregister = common dso_local global i32 0, align 4
@choninvalidate = common dso_local global i32 0, align 4
@chcleanup = common dso_local global i32 0, align 4
@chstart = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"chasync: Unable to probe new device due to status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cam_path*, i8*)* @chasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chasync(i8* %0, i32 %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cam_periph*, align 8
  %10 = alloca %struct.ccb_getdev*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.cam_periph*
  store %struct.cam_periph* %13, %struct.cam_periph** %9, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %62 [
    i32 128, label %15
  ]

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.ccb_getdev*
  store %struct.ccb_getdev* %17, %struct.ccb_getdev** %10, align 8
  %18 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %19 = icmp eq %struct.ccb_getdev* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %68

21:                                               ; preds = %15
  %22 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %23 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PROTO_SCSI, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %68

28:                                               ; preds = %21
  %29 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %30 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %29, i32 0, i32 0
  %31 = call i32 @SID_QUAL(i32* %30)
  %32 = load i32, i32* @SID_QUAL_LU_CONNECTED, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %68

35:                                               ; preds = %28
  %36 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %37 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %36, i32 0, i32 0
  %38 = call i32 @SID_TYPE(i32* %37)
  %39 = load i32, i32* @T_CHANGER, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %68

42:                                               ; preds = %35
  %43 = load i32, i32* @chregister, align 4
  %44 = load i32, i32* @choninvalidate, align 4
  %45 = load i32, i32* @chcleanup, align 4
  %46 = load i32, i32* @chstart, align 4
  %47 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %48 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %49 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %50 = call i32 @cam_periph_alloc(i32 %43, i32 %44, i32 %45, i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %47, %struct.cam_path* %48, void (i8*, i32, %struct.cam_path*, i8*)* @chasync, i32 128, %struct.ccb_getdev* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @CAM_REQ_CMP, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @CAM_REQ_INPROG, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %54, %42
  br label %68

62:                                               ; preds = %4
  %63 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @cam_periph_async(%struct.cam_periph* %63, i32 %64, %struct.cam_path* %65, i8* %66)
  br label %68

68:                                               ; preds = %62, %61, %41, %34, %27, %20
  ret void
}

declare dso_local i32 @SID_QUAL(i32*) #1

declare dso_local i32 @SID_TYPE(i32*) #1

declare dso_local i32 @cam_periph_alloc(i32, i32, i32, i32, i8*, i32, %struct.cam_path*, void (i8*, i32, %struct.cam_path*, i8*)*, i32, %struct.ccb_getdev*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @cam_periph_async(%struct.cam_periph*, i32, %struct.cam_path*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
