; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_get_trim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_get_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.cam_iosched_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@do_dynamic_iosched = common dso_local global i64 0, align 8
@iosched_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @cam_iosched_get_trim(%struct.cam_iosched_softc* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.cam_iosched_softc*, align 8
  store %struct.cam_iosched_softc* %0, %struct.cam_iosched_softc** %3, align 8
  %4 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %5 = call i32 @cam_iosched_has_more_trim(%struct.cam_iosched_softc* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.bio* null, %struct.bio** %2, align 8
  br label %11

8:                                                ; preds = %1
  %9 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %10 = call %struct.bio* @cam_iosched_next_trim(%struct.cam_iosched_softc* %9)
  store %struct.bio* %10, %struct.bio** %2, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  ret %struct.bio* %12
}

declare dso_local i32 @cam_iosched_has_more_trim(%struct.cam_iosched_softc*) #1

declare dso_local %struct.bio* @cam_iosched_next_trim(%struct.cam_iosched_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
