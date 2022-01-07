; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_bg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32, i32, i32, i32, i64 }
%struct.libworker = type { i32, i32 }

@UB_NOMEM = common dso_local global i32 0, align 4
@UB_FORKFAIL = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libworker_bg(%struct.ub_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ub_ctx*, align 8
  %4 = alloca %struct.libworker*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %3, align 8
  %5 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %5, i32 0, i32 3
  %7 = call i32 @lock_basic_lock(i32* %6)
  %8 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %13, i32 0, i32 3
  %15 = call i32 @lock_basic_unlock(i32* %14)
  %16 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %17 = call %struct.libworker* @libworker_setup(%struct.ub_ctx* %16, i32 1, i32* null)
  store %struct.libworker* %17, %struct.libworker** %4, align 8
  %18 = load %struct.libworker*, %struct.libworker** %4, align 8
  %19 = icmp ne %struct.libworker* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @UB_NOMEM, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %12
  %23 = load %struct.libworker*, %struct.libworker** %4, align 8
  %24 = getelementptr inbounds %struct.libworker, %struct.libworker* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %25, i32 0, i32 4
  %27 = load %struct.libworker*, %struct.libworker** %4, align 8
  %28 = call i32 @ub_thread_create(i32* %26, i32 (%struct.libworker*)* @libworker_dobg, %struct.libworker* %27)
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %30, i32 0, i32 3
  %32 = call i32 @lock_basic_unlock(i32* %31)
  %33 = load i32, i32* @UB_FORKFAIL, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @UB_NOERROR, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %29, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local %struct.libworker* @libworker_setup(%struct.ub_ctx*, i32, i32*) #1

declare dso_local i32 @ub_thread_create(i32*, i32 (%struct.libworker*)*, %struct.libworker*) #1

declare dso_local i32 @libworker_dobg(%struct.libworker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
