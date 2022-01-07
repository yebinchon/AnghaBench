; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_next_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_iosched.c_cam_iosched_next_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64 }
%struct.cam_iosched_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@BIO_READ = common dso_local global i64 0, align 8
@IOP_RATE_LIMITED = common dso_local global i32 0, align 4
@do_dynamic_iosched = common dso_local global i64 0, align 8
@iosched_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @cam_iosched_next_bio(%struct.cam_iosched_softc* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.cam_iosched_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.cam_iosched_softc* %0, %struct.cam_iosched_softc** %3, align 8
  %5 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %6 = call %struct.bio* @cam_iosched_get_trim(%struct.cam_iosched_softc* %5)
  store %struct.bio* %6, %struct.bio** %4, align 8
  %7 = icmp ne %struct.bio* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %9, %struct.bio** %2, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %12 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %11, i32 0, i32 1
  %13 = call %struct.bio* @bioq_first(i32* %12)
  store %struct.bio* %13, %struct.bio** %4, align 8
  %14 = icmp eq %struct.bio* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.bio* null, %struct.bio** %2, align 8
  br label %22

16:                                               ; preds = %10
  %17 = load %struct.cam_iosched_softc*, %struct.cam_iosched_softc** %3, align 8
  %18 = getelementptr inbounds %struct.cam_iosched_softc, %struct.cam_iosched_softc* %17, i32 0, i32 1
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = call i32 @bioq_remove(i32* %18, %struct.bio* %19)
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %21, %struct.bio** %2, align 8
  br label %22

22:                                               ; preds = %16, %15, %8
  %23 = load %struct.bio*, %struct.bio** %2, align 8
  ret %struct.bio* %23
}

declare dso_local %struct.bio* @cam_iosched_get_trim(%struct.cam_iosched_softc*) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
