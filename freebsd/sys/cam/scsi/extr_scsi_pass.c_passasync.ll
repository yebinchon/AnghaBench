; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passasync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.cam_periph = type { i64 }
%struct.ccb_getdev = type { i32 }
%struct.cam_status_entry = type { i8* }
%struct.pass_softc = type { i32 }

@passregister = common dso_local global i32 0, align 4
@passoninvalidate = common dso_local global i32 0, align 4
@passcleanup = common dso_local global i32 0, align 4
@passstart = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"passasync: Unable to attach new device due to status %#x: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@CDAI_TYPE_PHYS_PATH = common dso_local global i64 0, align 8
@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cam_path*, i8*)* @passasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @passasync(i8* %0, i32 %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cam_periph*, align 8
  %10 = alloca %struct.ccb_getdev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cam_status_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pass_softc*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.cam_periph*
  store %struct.cam_periph* %16, %struct.cam_periph** %9, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %76 [
    i32 128, label %18
    i32 129, label %55
  ]

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.ccb_getdev*
  store %struct.ccb_getdev* %20, %struct.ccb_getdev** %10, align 8
  %21 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %22 = icmp eq %struct.ccb_getdev* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %82

24:                                               ; preds = %18
  %25 = load i32, i32* @passregister, align 4
  %26 = load i32, i32* @passoninvalidate, align 4
  %27 = load i32, i32* @passcleanup, align 4
  %28 = load i32, i32* @passstart, align 4
  %29 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %30 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %31 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %32 = call i32 @cam_periph_alloc(i32 %25, i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29, %struct.cam_path* %30, void (i8*, i32, %struct.cam_path*, i8*)* @passasync, i32 128, %struct.ccb_getdev* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @CAM_REQ_CMP, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %24
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @CAM_REQ_INPROG, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.cam_status_entry* @cam_fetch_status_entry(i32 %41)
  store %struct.cam_status_entry* %42, %struct.cam_status_entry** %12, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.cam_status_entry*, %struct.cam_status_entry** %12, align 8
  %45 = icmp ne %struct.cam_status_entry* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.cam_status_entry*, %struct.cam_status_entry** %12, align 8
  %48 = getelementptr inbounds %struct.cam_status_entry, %struct.cam_status_entry* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  br label %51

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %50 ]
  %53 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* %52)
  br label %54

54:                                               ; preds = %51, %36, %24
  br label %82

55:                                               ; preds = %4
  %56 = load i8*, i8** %8, align 8
  %57 = ptrtoint i8* %56 to i64
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @CDAI_TYPE_PHYS_PATH, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %63 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.pass_softc*
  store %struct.pass_softc* %65, %struct.pass_softc** %14, align 8
  %66 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %67 = call i32 @cam_periph_acquire(%struct.cam_periph* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %82

70:                                               ; preds = %61
  %71 = load i32, i32* @taskqueue_thread, align 4
  %72 = load %struct.pass_softc*, %struct.pass_softc** %14, align 8
  %73 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %72, i32 0, i32 0
  %74 = call i32 @taskqueue_enqueue(i32 %71, i32* %73)
  br label %75

75:                                               ; preds = %70, %55
  br label %82

76:                                               ; preds = %4
  %77 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @cam_periph_async(%struct.cam_periph* %77, i32 %78, %struct.cam_path* %79, i8* %80)
  br label %82

82:                                               ; preds = %76, %75, %69, %54, %23
  ret void
}

declare dso_local i32 @cam_periph_alloc(i32, i32, i32, i32, i8*, i32, %struct.cam_path*, void (i8*, i32, %struct.cam_path*, i8*)*, i32, %struct.ccb_getdev*) #1

declare dso_local %struct.cam_status_entry* @cam_fetch_status_entry(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @cam_periph_async(%struct.cam_periph*, i32, %struct.cam_path*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
