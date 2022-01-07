; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_get_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_get_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { i32 }
%struct.cam_periph = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@M_CAMCCB = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.ccb* (%struct.cam_periph*)* @xpt_get_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.ccb* @xpt_get_ccb(%struct.cam_periph* %0) #0 {
  %2 = alloca %struct.cam_periph*, align 8
  %3 = alloca %union.ccb*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %2, align 8
  %4 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %5 = call i32 @cam_periph_unlock(%struct.cam_periph* %4)
  %6 = load i32, i32* @M_CAMCCB, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = or i32 %7, %8
  %10 = call %union.ccb* @malloc(i32 4, i32 %6, i32 %9)
  store %union.ccb* %10, %union.ccb** %3, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %12 = call i32 @cam_periph_lock(%struct.cam_periph* %11)
  %13 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %14 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.cam_periph*, %struct.cam_periph** %2, align 8
  %18 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @cam_ccbq_take_opening(i32* %22)
  %24 = load %union.ccb*, %union.ccb** %3, align 8
  ret %union.ccb* %24
}

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local %union.ccb* @malloc(i32, i32, i32) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @cam_ccbq_take_opening(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
