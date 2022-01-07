; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabhash = type { i64, %struct.slabhash* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slabhash_delete(%struct.slabhash* %0) #0 {
  %2 = alloca %struct.slabhash*, align 8
  %3 = alloca i64, align 8
  store %struct.slabhash* %0, %struct.slabhash** %2, align 8
  %4 = load %struct.slabhash*, %struct.slabhash** %2, align 8
  %5 = icmp ne %struct.slabhash* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %42

7:                                                ; preds = %1
  %8 = load %struct.slabhash*, %struct.slabhash** %2, align 8
  %9 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %8, i32 0, i32 1
  %10 = load %struct.slabhash*, %struct.slabhash** %9, align 8
  %11 = icmp ne %struct.slabhash* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.slabhash*, %struct.slabhash** %2, align 8
  %16 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.slabhash*, %struct.slabhash** %2, align 8
  %21 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %20, i32 0, i32 1
  %22 = load %struct.slabhash*, %struct.slabhash** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %22, i64 %23
  %25 = bitcast %struct.slabhash* %24 to { i64, %struct.slabhash* }*
  %26 = getelementptr inbounds { i64, %struct.slabhash* }, { i64, %struct.slabhash* }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, %struct.slabhash* }, { i64, %struct.slabhash* }* %25, i32 0, i32 1
  %29 = load %struct.slabhash*, %struct.slabhash** %28, align 8
  %30 = call i32 @lruhash_delete(i64 %27, %struct.slabhash* %29)
  br label %31

31:                                               ; preds = %19
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %13

34:                                               ; preds = %13
  %35 = load %struct.slabhash*, %struct.slabhash** %2, align 8
  %36 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %35, i32 0, i32 1
  %37 = load %struct.slabhash*, %struct.slabhash** %36, align 8
  %38 = call i32 @free(%struct.slabhash* %37)
  br label %39

39:                                               ; preds = %34, %7
  %40 = load %struct.slabhash*, %struct.slabhash** %2, align 8
  %41 = call i32 @free(%struct.slabhash* %40)
  br label %42

42:                                               ; preds = %39, %6
  ret void
}

declare dso_local i32 @lruhash_delete(i64, %struct.slabhash*) #1

declare dso_local i32 @free(%struct.slabhash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
