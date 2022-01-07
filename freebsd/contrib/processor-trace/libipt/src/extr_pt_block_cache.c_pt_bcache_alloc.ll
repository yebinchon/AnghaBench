; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_cache.c_pt_bcache_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_cache.c_pt_bcache_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_cache = type { i64 }

@UINT32_MAX = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pt_block_cache* @pt_bcache_alloc(i32 %0) #0 {
  %2 = alloca %struct.pt_block_cache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_cache*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @UINT32_MAX, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store %struct.pt_block_cache* null, %struct.pt_block_cache** %2, align 8
  br label %40

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 8, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @SIZE_MAX, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store %struct.pt_block_cache* null, %struct.pt_block_cache** %2, align 8
  br label %40

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = call %struct.pt_block_cache* @malloc(i64 %25)
  store %struct.pt_block_cache* %26, %struct.pt_block_cache** %4, align 8
  %27 = load %struct.pt_block_cache*, %struct.pt_block_cache** %4, align 8
  %28 = icmp ne %struct.pt_block_cache* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store %struct.pt_block_cache* null, %struct.pt_block_cache** %2, align 8
  br label %40

30:                                               ; preds = %23
  %31 = load %struct.pt_block_cache*, %struct.pt_block_cache** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 @memset(%struct.pt_block_cache* %31, i32 0, i64 %33)
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.pt_block_cache*, %struct.pt_block_cache** %4, align 8
  %38 = getelementptr inbounds %struct.pt_block_cache, %struct.pt_block_cache* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.pt_block_cache*, %struct.pt_block_cache** %4, align 8
  store %struct.pt_block_cache* %39, %struct.pt_block_cache** %2, align 8
  br label %40

40:                                               ; preds = %30, %29, %22, %12
  %41 = load %struct.pt_block_cache*, %struct.pt_block_cache** %2, align 8
  ret %struct.pt_block_cache* %41
}

declare dso_local %struct.pt_block_cache* @malloc(i64) #1

declare dso_local i32 @memset(%struct.pt_block_cache*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
