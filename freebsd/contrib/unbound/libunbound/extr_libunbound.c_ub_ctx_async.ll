; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32, i64 }

@UB_AFTERFINAL = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_ctx_async(%struct.ub_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %6, i32 0, i32 1
  %8 = call i32 @lock_basic_lock(i32* %7)
  %9 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %14, i32 0, i32 1
  %16 = call i32 @lock_basic_unlock(i32* %15)
  %17 = load i32, i32* @UB_AFTERFINAL, align 4
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %22, i32 0, i32 1
  %24 = call i32 @lock_basic_unlock(i32* %23)
  %25 = load i32, i32* @UB_NOERROR, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
