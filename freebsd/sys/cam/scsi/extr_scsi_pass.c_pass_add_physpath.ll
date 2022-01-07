; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_pass_add_physpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_pass_add_physpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i32, %struct.pass_softc* }
%struct.pass_softc = type { i32, i32, i32 }
%struct.mtx = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"GEOM::physpath\00", align 1
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@PASS_FLAG_INITIAL_PHYSPATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pass_add_physpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass_add_physpath(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_periph*, align 8
  %6 = alloca %struct.pass_softc*, align 8
  %7 = alloca %struct.mtx*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.cam_periph*
  store %struct.cam_periph* %10, %struct.cam_periph** %5, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %12 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %11, i32 0, i32 2
  %13 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  store %struct.pass_softc* %13, %struct.pass_softc** %6, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call i8* @malloc(i32 %14, i32 %15, i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %19 = call %struct.mtx* @cam_periph_mtx(%struct.cam_periph* %18)
  store %struct.mtx* %19, %struct.mtx** %7, align 8
  %20 = load %struct.mtx*, %struct.mtx** %7, align 8
  %21 = call i32 @mtx_lock(%struct.mtx* %20)
  %22 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %23 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %58

29:                                               ; preds = %2
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @MAXPATHLEN, align 4
  %32 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %33 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @xpt_getattr(i8* %30, i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %29
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.mtx*, %struct.mtx** %7, align 8
  %43 = call i32 @mtx_unlock(%struct.mtx* %42)
  %44 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %45 = load %struct.pass_softc*, %struct.pass_softc** %6, align 8
  %46 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %45, i32 0, i32 1
  %47 = load %struct.pass_softc*, %struct.pass_softc** %6, align 8
  %48 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pass_softc*, %struct.pass_softc** %6, align 8
  %51 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @make_dev_physpath_alias(i32 %44, i32* %46, i32 %49, i32 %52, i8* %53)
  %55 = load %struct.mtx*, %struct.mtx** %7, align 8
  %56 = call i32 @mtx_lock(%struct.mtx* %55)
  br label %57

57:                                               ; preds = %41, %37, %29
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.pass_softc*, %struct.pass_softc** %6, align 8
  %60 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PASS_FLAG_INITIAL_PHYSPATH, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @PASS_FLAG_INITIAL_PHYSPATH, align 4
  %67 = load %struct.pass_softc*, %struct.pass_softc** %6, align 8
  %68 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %58
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %4, align 4
  %75 = icmp sgt i32 %73, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.cam_periph*, %struct.cam_periph** %5, align 8
  %78 = call i32 @cam_periph_release_locked(%struct.cam_periph* %77)
  br label %72

79:                                               ; preds = %72
  %80 = load %struct.mtx*, %struct.mtx** %7, align 8
  %81 = call i32 @mtx_unlock(%struct.mtx* %80)
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* @M_DEVBUF, align 4
  %84 = call i32 @free(i8* %82, i32 %83)
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local %struct.mtx* @cam_periph_mtx(%struct.cam_periph*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i64 @xpt_getattr(i8*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @make_dev_physpath_alias(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
