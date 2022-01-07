; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i64, %struct.lruhash*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lruhash_delete(%struct.lruhash* %0) #0 {
  %2 = alloca %struct.lruhash*, align 8
  %3 = alloca i64, align 8
  store %struct.lruhash* %0, %struct.lruhash** %2, align 8
  %4 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %5 = icmp ne %struct.lruhash* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %35

7:                                                ; preds = %1
  %8 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %9 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %8, i32 0, i32 2
  %10 = call i32 @lock_quick_destroy(i32* %9)
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %25, %7
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %14 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %19 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %20 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %19, i32 0, i32 1
  %21 = load %struct.lruhash*, %struct.lruhash** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %21, i64 %22
  %24 = call i32 @bin_delete(%struct.lruhash* %18, %struct.lruhash* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %11

28:                                               ; preds = %11
  %29 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %30 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %29, i32 0, i32 1
  %31 = load %struct.lruhash*, %struct.lruhash** %30, align 8
  %32 = call i32 @free(%struct.lruhash* %31)
  %33 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %34 = call i32 @free(%struct.lruhash* %33)
  br label %35

35:                                               ; preds = %28, %6
  ret void
}

declare dso_local i32 @lock_quick_destroy(i32*) #1

declare dso_local i32 @bin_delete(%struct.lruhash*, %struct.lruhash*) #1

declare dso_local i32 @free(%struct.lruhash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
