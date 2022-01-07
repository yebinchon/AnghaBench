; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32 }

@UB_PIPE = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_process(%struct.ub_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ub_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %3, align 8
  br label %7

7:                                                ; preds = %1, %37
  store i32* null, i32** %5, align 8
  %8 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %8, i32 0, i32 0
  %10 = call i32 @lock_basic_lock(i32* %9)
  %11 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @tube_read_msg(i32 %13, i32** %5, i32* %6, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %15, i32 0, i32 0
  %17 = call i32 @lock_basic_unlock(i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i32, i32* @UB_PIPE, align 4
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %7
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %40

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @process_answer(%struct.ub_ctx* %28, i32* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @free(i32* %34)
  %36 = load i32, i32* @UB_PIPE, align 4
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %27
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @free(i32* %38)
  br label %7

40:                                               ; preds = %25
  %41 = load i32, i32* @UB_NOERROR, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %33, %20
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @tube_read_msg(i32, i32**, i32*, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @process_answer(%struct.ub_ctx*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
