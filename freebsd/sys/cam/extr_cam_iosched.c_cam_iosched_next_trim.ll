; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_next_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_next_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.cam_iosched_softc = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ticks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @cam_iosched_next_trim(%struct.cam_iosched_softc* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.cam_iosched_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.cam_iosched_softc* %0, %struct.cam_iosched_softc** %3, align 8
  %5 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %6 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %5, i32 0, i32 3
  %7 = call %struct.bio* @bioq_first(i32* %6)
  store %struct.bio* %7, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = icmp eq %struct.bio* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.bio* null, %struct.bio** %2, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %13 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %12, i32 0, i32 3
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = call i32 @bioq_remove(i32* %13, %struct.bio* %14)
  %16 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %17 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @ticks, align 4
  %21 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %22 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %23, %struct.bio** %2, align 8
  br label %24

24:                                               ; preds = %11, %10
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  ret %struct.bio* %25
}

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
