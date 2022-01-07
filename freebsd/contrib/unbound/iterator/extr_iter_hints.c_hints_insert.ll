; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_hints_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_hints = type { i32 }
%struct.delegpt = type { i32, i32, i32 }
%struct.iter_hints_stub = type { i32, i64, %struct.delegpt* }

@.str = private unnamed_addr constant [34 x i8] c"second hints for zone %s ignored.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_hints*, i32, %struct.delegpt*, i32)* @hints_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hints_insert(%struct.iter_hints* %0, i32 %1, %struct.delegpt* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iter_hints*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.delegpt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iter_hints_stub*, align 8
  %11 = alloca [257 x i8], align 16
  store %struct.iter_hints* %0, %struct.iter_hints** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.delegpt* %2, %struct.delegpt** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i64 @malloc(i32 24)
  %13 = inttoptr i64 %12 to %struct.iter_hints_stub*
  store %struct.iter_hints_stub* %13, %struct.iter_hints_stub** %10, align 8
  %14 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %10, align 8
  %15 = icmp ne %struct.iter_hints_stub* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %18 = call i32 @delegpt_free_mlc(%struct.delegpt* %17)
  store i32 0, i32* %5, align 4
  br label %56

19:                                               ; preds = %4
  %20 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %21 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %10, align 8
  %22 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %21, i32 0, i32 2
  store %struct.delegpt* %20, %struct.delegpt** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %10, align 8
  %26 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.iter_hints*, %struct.iter_hints** %6, align 8
  %28 = getelementptr inbounds %struct.iter_hints, %struct.iter_hints* %27, i32 0, i32 0
  %29 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %10, align 8
  %30 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %29, i32 0, i32 0
  %31 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %32 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %35 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %38 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @name_tree_insert(i32* %28, i32* %30, i32 %33, i32 %36, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %19
  %44 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %45 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %48 = call i32 @dname_str(i32 %46, i8* %47)
  %49 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %50 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load %struct.delegpt*, %struct.delegpt** %8, align 8
  %52 = call i32 @delegpt_free_mlc(%struct.delegpt* %51)
  %53 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %10, align 8
  %54 = call i32 @free(%struct.iter_hints_stub* %53)
  br label %55

55:                                               ; preds = %43, %19
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %16
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @delegpt_free_mlc(%struct.delegpt*) #1

declare dso_local i32 @name_tree_insert(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i32 @free(%struct.iter_hints_stub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
