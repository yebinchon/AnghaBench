; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/complib/extr_cl_timer.c___cl_timer_prov_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/complib/extr_cl_timer.c___cl_timer_prov_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@gp_timer_prov = common dso_local global %struct.TYPE_4__* null, align 8
@CL_INSUFFICIENT_MEMORY = common dso_local global i32 0, align 4
@__cl_timer_prov_cb = common dso_local global i32 0, align 4
@CL_ERROR = common dso_local global i32 0, align 4
@CL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cl_timer_prov_create() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gp_timer_prov, align 8
  %3 = icmp eq %struct.TYPE_4__* %2, null
  %4 = zext i1 %3 to i32
  %5 = call i32 @CL_ASSERT(i32 %4)
  %6 = call %struct.TYPE_4__* @malloc(i32 4)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** @gp_timer_prov, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gp_timer_prov, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @CL_INSUFFICIENT_MEMORY, align 4
  store i32 %10, i32* %1, align 4
  br label %34

11:                                               ; preds = %0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gp_timer_prov, align 8
  %13 = call i32 @memset(%struct.TYPE_4__* %12, i32 0, i32 4)
  br label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gp_timer_prov, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = call i32 @cl_qlist_init(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gp_timer_prov, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = call i32 @pthread_mutex_init(i32* %19, i32* null)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gp_timer_prov, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i32 @pthread_cond_init(i32* %22, i32* null)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gp_timer_prov, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* @__cl_timer_prov_cb, align 4
  %27 = call i64 @pthread_create(i32* %25, i32* null, i32 %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = call i32 (...) @__cl_timer_prov_destroy()
  %31 = load i32, i32* @CL_ERROR, align 4
  store i32 %31, i32* %1, align 4
  br label %34

32:                                               ; preds = %14
  %33 = load i32, i32* @CL_SUCCESS, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %29, %9
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @CL_ASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cl_qlist_init(i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @__cl_timer_prov_destroy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
