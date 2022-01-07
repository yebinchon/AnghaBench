; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_sim.c_cam_sim_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_sim.c_cam_sim_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.cam_sim = type { i32, %struct.mtx* }

@cam_sim_free_mtx = common dso_local global %struct.mtx zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"sim->refcount >= 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_sim_hold(%struct.cam_sim* %0) #0 {
  %2 = alloca %struct.cam_sim*, align 8
  %3 = alloca %struct.mtx*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %2, align 8
  %4 = load %struct.cam_sim*, %struct.cam_sim** %2, align 8
  %5 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %4, i32 0, i32 1
  %6 = load %struct.mtx*, %struct.mtx** %5, align 8
  store %struct.mtx* %6, %struct.mtx** %3, align 8
  %7 = load %struct.mtx*, %struct.mtx** %3, align 8
  %8 = icmp ne %struct.mtx* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.mtx*, %struct.mtx** %3, align 8
  %11 = call i32 @mtx_owned(%struct.mtx* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load %struct.mtx*, %struct.mtx** %3, align 8
  %15 = call i32 @mtx_lock(%struct.mtx* %14)
  br label %17

16:                                               ; preds = %9
  store %struct.mtx* null, %struct.mtx** %3, align 8
  br label %17

17:                                               ; preds = %16, %13
  br label %21

18:                                               ; preds = %1
  store %struct.mtx* @cam_sim_free_mtx, %struct.mtx** %3, align 8
  %19 = load %struct.mtx*, %struct.mtx** %3, align 8
  %20 = call i32 @mtx_lock(%struct.mtx* %19)
  br label %21

21:                                               ; preds = %18, %17
  %22 = load %struct.cam_sim*, %struct.cam_sim** %2, align 8
  %23 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.cam_sim*, %struct.cam_sim** %2, align 8
  %29 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.mtx*, %struct.mtx** %3, align 8
  %33 = icmp ne %struct.mtx* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.mtx*, %struct.mtx** %3, align 8
  %36 = call i32 @mtx_unlock(%struct.mtx* %35)
  br label %37

37:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @mtx_owned(%struct.mtx*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
