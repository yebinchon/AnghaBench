; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.cam_periph = type { i32, i64 }
%struct.pass_softc = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@PASS_FLAG_INVALID = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't do nonblocking access\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @passopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.cam_periph*, align 8
  %11 = alloca %struct.pass_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %13 = load %struct.cdev*, %struct.cdev** %6, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cam_periph*
  store %struct.cam_periph* %16, %struct.cam_periph** %10, align 8
  %17 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %18 = call i64 @cam_periph_acquire(%struct.cam_periph* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %5, align 4
  br label %93

22:                                               ; preds = %4
  %23 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %24 = call i32 @cam_periph_lock(%struct.cam_periph* %23)
  %25 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %26 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.pass_softc*
  store %struct.pass_softc* %28, %struct.pass_softc** %11, align 8
  %29 = load %struct.pass_softc*, %struct.pass_softc** %11, align 8
  %30 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PASS_FLAG_INVALID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %37 = call i32 @cam_periph_release_locked(%struct.cam_periph* %36)
  %38 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %39 = call i32 @cam_periph_unlock(%struct.cam_periph* %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %5, align 4
  br label %93

41:                                               ; preds = %22
  %42 = load %struct.thread*, %struct.thread** %9, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @securelevel_gt(i32 %44, i32 1)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %50 = call i32 @cam_periph_release_locked(%struct.cam_periph* %49)
  %51 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %52 = call i32 @cam_periph_unlock(%struct.cam_periph* %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %93

54:                                               ; preds = %41
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @FWRITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @FREAD, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59, %54
  %65 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %66 = call i32 @cam_periph_release_locked(%struct.cam_periph* %65)
  %67 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %68 = call i32 @cam_periph_unlock(%struct.cam_periph* %67)
  %69 = load i32, i32* @EPERM, align 4
  store i32 %69, i32* %5, align 4
  br label %93

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @O_NONBLOCK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %77 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @xpt_print(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %81 = call i32 @cam_periph_release_locked(%struct.cam_periph* %80)
  %82 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %83 = call i32 @cam_periph_unlock(%struct.cam_periph* %82)
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %5, align 4
  br label %93

85:                                               ; preds = %70
  %86 = load %struct.pass_softc*, %struct.pass_softc** %11, align 8
  %87 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.cam_periph*, %struct.cam_periph** %10, align 8
  %91 = call i32 @cam_periph_unlock(%struct.cam_periph* %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %85, %75, %64, %48, %35, %20
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @cam_periph_acquire(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @securelevel_gt(i32, i32) #1

declare dso_local i32 @xpt_print(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
