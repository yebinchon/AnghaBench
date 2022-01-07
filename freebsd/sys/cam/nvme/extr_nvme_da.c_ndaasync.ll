; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndaasync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndaasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.cam_periph = type { %struct.nda_softc* }
%struct.nda_softc = type { i32 }
%struct.ccb_getdev = type { i32 }

@PROTO_NVME = common dso_local global i32 0, align 4
@ndaregister = common dso_local global i32 0, align 4
@ndaoninvalidate = common dso_local global i32 0, align 4
@ndacleanup = common dso_local global i32 0, align 4
@ndastart = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"nda\00", align 1
@CAM_PERIPH_BIO = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"ndaasync: Unable to attach to new device due to status 0x%x\0A\00", align 1
@CDAI_TYPE_PHYS_PATH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"GEOM::physpath\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cam_path*, i8*)* @ndaasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndaasync(i8* %0, i32 %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cam_periph*, align 8
  %10 = alloca %struct.ccb_getdev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.nda_softc*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.cam_periph*
  store %struct.cam_periph* %15, %struct.cam_periph** %9, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %67 [
    i32 129, label %17
    i32 130, label %50
    i32 128, label %66
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.ccb_getdev*
  store %struct.ccb_getdev* %19, %struct.ccb_getdev** %10, align 8
  %20 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %21 = icmp eq %struct.ccb_getdev* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %73

23:                                               ; preds = %17
  %24 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %25 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PROTO_NVME, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %73

30:                                               ; preds = %23
  %31 = load i32, i32* @ndaregister, align 4
  %32 = load i32, i32* @ndaoninvalidate, align 4
  %33 = load i32, i32* @ndacleanup, align 4
  %34 = load i32, i32* @ndastart, align 4
  %35 = load i32, i32* @CAM_PERIPH_BIO, align 4
  %36 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %37 = load %struct.ccb_getdev*, %struct.ccb_getdev** %10, align 8
  %38 = call i32 @cam_periph_alloc(i32 %31, i32 %32, i32 %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35, %struct.cam_path* %36, void (i8*, i32, %struct.cam_path*, i8*)* @ndaasync, i32 129, %struct.ccb_getdev* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @CAM_REQ_CMP, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @CAM_REQ_INPROG, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %42, %30
  br label %73

50:                                               ; preds = %4
  %51 = load i8*, i8** %8, align 8
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @CDAI_TYPE_PHYS_PATH, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %58 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %57, i32 0, i32 0
  %59 = load %struct.nda_softc*, %struct.nda_softc** %58, align 8
  store %struct.nda_softc* %59, %struct.nda_softc** %13, align 8
  %60 = load %struct.nda_softc*, %struct.nda_softc** %13, align 8
  %61 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @M_NOWAIT, align 4
  %64 = call i32 @disk_attr_changed(i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %56, %50
  br label %73

66:                                               ; preds = %4
  br label %67

67:                                               ; preds = %4, %66
  %68 = load %struct.cam_periph*, %struct.cam_periph** %9, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @cam_periph_async(%struct.cam_periph* %68, i32 %69, %struct.cam_path* %70, i8* %71)
  br label %73

73:                                               ; preds = %67, %65, %49, %29, %22
  ret void
}

declare dso_local i32 @cam_periph_alloc(i32, i32, i32, i32, i8*, i32, %struct.cam_path*, void (i8*, i32, %struct.cam_path*, i8*)*, i32, %struct.ccb_getdev*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @disk_attr_changed(i32, i8*, i32) #1

declare dso_local i32 @cam_periph_async(%struct.cam_periph*, i32, %struct.cam_path*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
