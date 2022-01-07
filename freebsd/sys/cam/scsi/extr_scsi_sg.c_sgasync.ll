; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgasync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.cam_periph = type { i32 }
%struct.ccb_getdev = type { i32 }
%struct.cam_status_entry = type { i8* }

@PROTO_SCSI = common dso_local global i32 0, align 4
@sgregister = common dso_local global i32 0, align 4
@sgoninvalidate = common dso_local global i32 0, align 4
@sgcleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"sg\00", align 1
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"sgasync: Unable to attach new device due to status %#x: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cam_path*, i8*)* @sgasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgasync(i8* %0, i32 %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cam_periph*, align 8
  %10 = alloca %struct.ccb_getdev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cam_status_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.cam_periph*
  store %struct.cam_periph* %14, %struct.cam_periph** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %59 [
    i32 128, label %16
  ]

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.ccb_getdev*
  store %struct.ccb_getdev* %18, %struct.ccb_getdev** %10, align 8
  %19 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %20 = icmp eq %struct.ccb_getdev* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %65

22:                                               ; preds = %16
  %23 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %24 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PROTO_SCSI, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %65

29:                                               ; preds = %22
  %30 = load i32, i32* @sgregister, align 4
  %31 = load i32, i32* @sgoninvalidate, align 4
  %32 = load i32, i32* @sgcleanup, align 4
  %33 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %34 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %35 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %36 = call i32 @cam_periph_alloc(i32 %30, i32 %31, i32 %32, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.cam_path* %34, void (i8*, i32, %struct.cam_path*, i8*)* @sgasync, i32 128, %struct.ccb_getdev* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @CAM_REQ_CMP, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @CAM_REQ_INPROG, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.cam_status_entry* @cam_fetch_status_entry(i32 %45)
  store %struct.cam_status_entry* %46, %struct.cam_status_entry** %12, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.cam_status_entry*, %struct.cam_status_entry** %12, align 8
  %49 = icmp ne %struct.cam_status_entry* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.cam_status_entry*, %struct.cam_status_entry** %12, align 8
  %52 = getelementptr inbounds %struct.cam_status_entry, %struct.cam_status_entry* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  br label %55

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i8* [ %53, %50 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %54 ]
  %57 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %47, i8* %56)
  br label %58

58:                                               ; preds = %55, %40, %29
  br label %65

59:                                               ; preds = %4
  %60 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @cam_periph_async(%struct.cam_periph* %60, i32 %61, %struct.cam_path* %62, i8* %63)
  br label %65

65:                                               ; preds = %59, %58, %28, %21
  ret void
}

declare dso_local i32 @cam_periph_alloc(i32, i32, i32, i32*, i8*, i32, %struct.cam_path*, void (i8*, i32, %struct.cam_path*, i8*)*, i32, %struct.ccb_getdev*) #1

declare dso_local %struct.cam_status_entry* @cam_fetch_status_entry(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @cam_periph_async(%struct.cam_periph*, i32, %struct.cam_path*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
