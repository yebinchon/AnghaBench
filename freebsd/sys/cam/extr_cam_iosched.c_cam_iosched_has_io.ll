; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_has_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_has_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_iosched_softc = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bio = type { i32 }

@do_dynamic_iosched = common dso_local global i64 0, align 8
@iosched_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_iosched_softc*)* @cam_iosched_has_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cam_iosched_has_io(%struct.cam_iosched_softc* %0) #0 {
  %2 = alloca %struct.cam_iosched_softc*, align 8
  store %struct.cam_iosched_softc* %0, %struct.cam_iosched_softc** %2, align 8
  %3 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %2, align 8
  %4 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %3, i32 0, i32 0
  %5 = call %struct.bio* @bioq_first(i32* %4)
  %6 = icmp ne %struct.bio* %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

declare dso_local %struct.bio* @bioq_first(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
