; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_unhold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_cam_periph_unhold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_PERIPH_LOCKED = common dso_local global i32 0, align 4
@CAM_PERIPH_LOCK_WANTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_periph_unhold(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %3 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @cam_periph_assert(%struct.cam_periph* %3, i32 %4)
  %6 = load i32, i32* @CAM_PERIPH_LOCKED, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %9 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %13 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CAM_PERIPH_LOCK_WANTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load i32, i32* @CAM_PERIPH_LOCK_WANTED, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %22 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %26 = call i32 @wakeup(%struct.cam_periph* %25)
  br label %27

27:                                               ; preds = %18, %1
  %28 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %29 = call i32 @cam_periph_release_locked(%struct.cam_periph* %28)
  ret void
}

declare dso_local i32 @cam_periph_assert(%struct.cam_periph*, i32) #1

declare dso_local i32 @wakeup(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_release_locked(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
