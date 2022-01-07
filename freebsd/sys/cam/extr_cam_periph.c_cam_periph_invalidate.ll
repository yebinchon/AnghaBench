; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_invalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i32 (%struct.cam_periph*)*, i32 }
%struct.sbuf = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_PERIPH_INVALID = common dso_local global i32 0, align 4
@CAM_DEBUG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Periph invalidated\0A\00", align 1
@CAM_PERIPH_ANNOUNCED = common dso_local global i32 0, align 4
@rebooting = common dso_local global i32 0, align 4
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@CAM_PERIPH_NEW_DEV_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_periph_invalidate(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.sbuf, align 4
  %4 = alloca [160 x i8], align 16
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %5 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @cam_periph_assert(%struct.cam_periph* %5, i32 %6)
  %8 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %9 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %17 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CAM_DEBUG_INFO, align 4
  %20 = call i32 @CAM_DEBUG(i32 %18, i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %22 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CAM_PERIPH_ANNOUNCED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %15
  %28 = load i32, i32* @rebooting, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %32 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %33 = call i32 @sbuf_new(%struct.sbuf* %3, i8* %31, i32 160, i32 %32)
  %34 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %35 = call i32 @xpt_denounce_periph_sbuf(%struct.cam_periph* %34, %struct.sbuf* %3)
  %36 = call i32 @sbuf_finish(%struct.sbuf* %3)
  %37 = call i32 @sbuf_putbuf(%struct.sbuf* %3)
  br label %38

38:                                               ; preds = %30, %27, %15
  %39 = load i32, i32* @CAM_PERIPH_INVALID, align 4
  %40 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %41 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @CAM_PERIPH_NEW_DEV_FOUND, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %47 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %51 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %50, i32 0, i32 1
  %52 = load i32 (%struct.cam_periph*)*, i32 (%struct.cam_periph*)** %51, align 8
  %53 = icmp ne i32 (%struct.cam_periph*)* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %38
  %55 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %56 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %55, i32 0, i32 1
  %57 = load i32 (%struct.cam_periph*)*, i32 (%struct.cam_periph*)** %56, align 8
  %58 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %59 = call i32 %57(%struct.cam_periph* %58)
  br label %60

60:                                               ; preds = %54, %38
  %61 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %62 = call i32 @cam_periph_release_locked(%struct.cam_periph* %61)
  br label %63

63:                                               ; preds = %60, %14
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @xpt_denounce_periph_sbuf(%struct.cam_periph*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_putbuf(%struct.sbuf*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
