; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lruhash_get_mem(%struct.lruhash* %0) #0 {
  %2 = alloca %struct.lruhash*, align 8
  %3 = alloca i64, align 8
  store %struct.lruhash* %0, %struct.lruhash** %2, align 8
  %4 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %5 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %4, i32 0, i32 2
  %6 = call i32 @lock_quick_lock(i32* %5)
  %7 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %8 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = add i64 32, %10
  store i64 %11, i64* %3, align 8
  %12 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %13 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %18 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %21 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i64 @lock_get_mem(i32* %24)
  %26 = add i64 4, %25
  %27 = mul i64 %19, %26
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %16, %1
  %31 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %32 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %31, i32 0, i32 2
  %33 = call i32 @lock_quick_unlock(i32* %32)
  %34 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %35 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %34, i32 0, i32 2
  %36 = call i64 @lock_get_mem(i32* %35)
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i64 @lock_get_mem(i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
