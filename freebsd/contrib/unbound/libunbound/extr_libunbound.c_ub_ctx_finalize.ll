; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_finalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_ctx*)* @ub_ctx_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ub_ctx_finalize(%struct.ub_ctx* %0) #0 {
  %2 = alloca %struct.ub_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %4, i32 0, i32 0
  %6 = call i32 @lock_basic_lock(i32* %5)
  %7 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %13 = call i32 @context_finalize(%struct.ub_ctx* %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %15, i32 0, i32 0
  %17 = call i32 @lock_basic_unlock(i32* %16)
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @context_finalize(%struct.ub_ctx*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
