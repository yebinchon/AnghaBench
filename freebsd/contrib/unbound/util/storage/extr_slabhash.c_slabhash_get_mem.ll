; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabhash = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @slabhash_get_mem(%struct.slabhash* %0) #0 {
  %2 = alloca %struct.slabhash*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.slabhash* %0, %struct.slabhash** %2, align 8
  store i64 16, i64* %4, align 8
  %5 = load %struct.slabhash*, %struct.slabhash** %2, align 8
  %6 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 8, %8
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %10, %9
  store i64 %11, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.slabhash*, %struct.slabhash** %2, align 8
  %15 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load %struct.slabhash*, %struct.slabhash** %2, align 8
  %21 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @lruhash_get_mem(i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %12

32:                                               ; preds = %12
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i64 @lruhash_get_mem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
