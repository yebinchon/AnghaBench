; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_sim.c_cam_sim_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_sim.c_cam_sim_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.cam_sim = type { i64, i32, %struct.mtx* }

@MA_OWNED = common dso_local global i32 0, align 4
@cam_sim_free_mtx = common dso_local global %struct.mtx zeroinitializer, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"simfree\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid error value for msleep(9)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"sim->refcount == 0\00", align 1
@M_CAMSIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cam_sim_free(%struct.cam_sim* %0, i32 %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca i32, align 4
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %8 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %7, i32 0, i32 2
  %9 = load %struct.mtx*, %struct.mtx** %8, align 8
  store %struct.mtx* %9, %struct.mtx** %5, align 8
  %10 = load %struct.mtx*, %struct.mtx** %5, align 8
  %11 = icmp ne %struct.mtx* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.mtx*, %struct.mtx** %5, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @mtx_assert(%struct.mtx* %13, i32 %14)
  br label %19

16:                                               ; preds = %2
  store %struct.mtx* @cam_sim_free_mtx, %struct.mtx** %5, align 8
  %17 = load %struct.mtx*, %struct.mtx** %5, align 8
  %18 = call i32 @mtx_lock(%struct.mtx* %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %21 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %25 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %30 = load %struct.mtx*, %struct.mtx** %5, align 8
  %31 = load i32, i32* @PRIBIO, align 4
  %32 = call i32 @msleep(%struct.cam_sim* %29, %struct.mtx* %30, i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %28, %19
  %38 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %39 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %45 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %44, i32 0, i32 2
  %46 = load %struct.mtx*, %struct.mtx** %45, align 8
  %47 = icmp eq %struct.mtx* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.mtx*, %struct.mtx** %5, align 8
  %50 = call i32 @mtx_unlock(%struct.mtx* %49)
  br label %51

51:                                               ; preds = %48, %37
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %56 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cam_simq_free(i32 %57)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %61 = load i32, i32* @M_CAMSIM, align 4
  %62 = call i32 @free(%struct.cam_sim* %60, i32 %61)
  ret void
}

declare dso_local i32 @mtx_assert(%struct.mtx*, i32) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @msleep(%struct.cam_sim*, %struct.mtx*, i32, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @cam_simq_free(i32) #1

declare dso_local i32 @free(%struct.cam_sim*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
