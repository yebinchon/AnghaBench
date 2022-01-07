; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_sim.c_cam_sim_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_sim.c_cam_sim_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.cam_sim = type { i8*, i32, i32, i32, i32, i32, %struct.mtx*, %struct.cam_devq*, i64, i32, i32*, i32, i8*, i32, i32 }
%struct.cam_devq = type { i32 }

@M_CAMSIM = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@CAM_PATH_ANY = common dso_local global i32 0, align 4
@Giant = common dso_local global %struct.mtx zeroinitializer, align 4
@CAM_SIM_MPSAFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cam_sim* @cam_sim_alloc(i32 %0, i32 %1, i8* %2, i8* %3, i32 %4, %struct.mtx* %5, i32 %6, i32 %7, %struct.cam_devq* %8) #0 {
  %10 = alloca %struct.cam_sim*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.mtx*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.cam_devq*, align 8
  %20 = alloca %struct.cam_sim*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store %struct.mtx* %5, %struct.mtx** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.cam_devq* %8, %struct.cam_devq** %19, align 8
  %21 = load i32, i32* @M_CAMSIM, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @malloc(i32 96, i32 %21, i32 %24)
  %26 = inttoptr i64 %25 to %struct.cam_sim*
  store %struct.cam_sim* %26, %struct.cam_sim** %20, align 8
  %27 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %28 = icmp eq %struct.cam_sim* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %9
  store %struct.cam_sim* null, %struct.cam_sim** %10, align 8
  br label %89

30:                                               ; preds = %9
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %33 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %32, i32 0, i32 14
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %36 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %35, i32 0, i32 13
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %39 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %42 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %41, i32 0, i32 12
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @CAM_PATH_ANY, align 4
  %44 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %45 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %44, i32 0, i32 11
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %47 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %46, i32 0, i32 10
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %50 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 8
  %51 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %52 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %51, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %18, align 4
  %54 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %55 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %58 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %60 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %59, i32 0, i32 5
  store i32 0, i32* %60, align 8
  %61 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %62 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %61, i32 0, i32 3
  store i32 1, i32* %62, align 8
  %63 = load %struct.cam_devq*, %struct.cam_devq** %19, align 8
  %64 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %65 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %64, i32 0, i32 7
  store %struct.cam_devq* %63, %struct.cam_devq** %65, align 8
  %66 = load %struct.mtx*, %struct.mtx** %16, align 8
  %67 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %68 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %67, i32 0, i32 6
  store %struct.mtx* %66, %struct.mtx** %68, align 8
  %69 = load %struct.mtx*, %struct.mtx** %16, align 8
  %70 = icmp eq %struct.mtx* %69, @Giant
  br i1 %70, label %71, label %78

71:                                               ; preds = %30
  %72 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %73 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %73, align 8
  %75 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %76 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %75, i32 0, i32 4
  %77 = call i32 @callout_init(i32* %76, i32 0)
  br label %87

78:                                               ; preds = %30
  %79 = load i32, i32* @CAM_SIM_MPSAFE, align 4
  %80 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %81 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  %85 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %84, i32 0, i32 4
  %86 = call i32 @callout_init(i32* %85, i32 1)
  br label %87

87:                                               ; preds = %78, %71
  %88 = load %struct.cam_sim*, %struct.cam_sim** %20, align 8
  store %struct.cam_sim* %88, %struct.cam_sim** %10, align 8
  br label %89

89:                                               ; preds = %87, %29
  %90 = load %struct.cam_sim*, %struct.cam_sim** %10, align 8
  ret %struct.cam_sim* %90
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
