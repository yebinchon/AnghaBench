; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_create_mlc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_create_mlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.delegpt* @delegpt_create_mlc(i32* %0) #0 {
  %2 = alloca %struct.delegpt*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.delegpt*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i64 @calloc(i32 1, i32 16)
  %6 = inttoptr i64 %5 to %struct.delegpt*
  store %struct.delegpt* %6, %struct.delegpt** %4, align 8
  %7 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %8 = icmp ne %struct.delegpt* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.delegpt* null, %struct.delegpt** %2, align 8
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %12 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %18 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %17, i32 0, i32 2
  %19 = call i32 @dname_count_size_labels(i32* %16, i32* %18)
  %20 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %21 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %24 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memdup(i32* %22, i32 %25)
  %27 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %28 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %30 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %15
  %34 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %35 = call i32 @free(%struct.delegpt* %34)
  store %struct.delegpt* null, %struct.delegpt** %2, align 8
  br label %39

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36, %10
  %38 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  store %struct.delegpt* %38, %struct.delegpt** %2, align 8
  br label %39

39:                                               ; preds = %37, %33, %9
  %40 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  ret %struct.delegpt* %40
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @dname_count_size_labels(i32*, i32*) #1

declare dso_local i32 @memdup(i32*, i32) #1

declare dso_local i32 @free(%struct.delegpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
