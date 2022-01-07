; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_find_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_find_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32 }

@NUM_ID_TRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_ctx*, i32*)* @find_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_id(%struct.ub_ctx* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %29, %2
  %12 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %12, i32 0, i32 1
  %14 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %14, i32 0, i32 0
  %16 = call i64 @rbtree_search(i32* %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @NUM_ID_TRIES, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %35

29:                                               ; preds = %18
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @rbtree_search(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
