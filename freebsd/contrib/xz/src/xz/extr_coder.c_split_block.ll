; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_coder.c_split_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_coder.c_split_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_block_size = common dso_local global i64 0, align 8
@opt_block_list = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*)* @split_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @split_block(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64*, i64** %5, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = call i32 (...) @hardware_threads_get()
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* @opt_block_size, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64*, i64** @opt_block_list, align 8
  %20 = icmp ne i64* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @opt_block_size, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %10
  %28 = load i64, i64* @opt_block_size, align 8
  %29 = load i64*, i64** %4, align 8
  store i64 %28, i64* %29, align 8
  br label %34

30:                                               ; preds = %10
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %4, align 8
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %36
  store i64 %39, i64* %37, align 8
  br label %78

40:                                               ; preds = %3
  %41 = load i64*, i64** @opt_block_list, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i64*, i64** @opt_block_list, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %4, align 8
  store i64 %57, i64* %58, align 8
  %59 = call i32 (...) @hardware_threads_get()
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %77

61:                                               ; preds = %52
  %62 = load i64, i64* @opt_block_size, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i64*, i64** %4, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @opt_block_size, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i64*, i64** %4, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @opt_block_size, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i64*, i64** %5, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* @opt_block_size, align 8
  %76 = load i64*, i64** %4, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %69, %64, %61, %52
  br label %78

78:                                               ; preds = %77, %34
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hardware_threads_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
