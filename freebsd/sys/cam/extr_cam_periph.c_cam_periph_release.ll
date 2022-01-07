; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }
%struct.mtx = type { i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_periph_release(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %struct.mtx*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %5 = icmp eq %struct.cam_periph* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %19

7:                                                ; preds = %1
  %8 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %9 = load i32, i32* @MA_NOTOWNED, align 4
  %10 = call i32 @cam_periph_assert(%struct.cam_periph* %8, i32 %9)
  %11 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %12 = call %struct.mtx* @cam_periph_mtx(%struct.cam_periph* %11)
  store %struct.mtx* %12, %struct.mtx** %3, align 8
  %13 = load %struct.mtx*, %struct.mtx** %3, align 8
  %14 = call i32 @mtx_lock(%struct.mtx* %13)
  %15 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %16 = call i32 @cam_periph_release_locked(%struct.cam_periph* %15)
  %17 = load %struct.mtx*, %struct.mtx** %3, align 8
  %18 = call i32 @mtx_unlock(%struct.mtx* %17)
  br label %19

19:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local %struct.mtx* @cam_periph_mtx(%struct.cam_periph*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
