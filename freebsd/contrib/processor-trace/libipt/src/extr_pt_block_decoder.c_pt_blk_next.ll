; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i64, i32, i32 }
%struct.pt_block = type { i32, i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_blk_next(%struct.pt_block_decoder* %0, %struct.pt_block* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_block_decoder*, align 8
  %6 = alloca %struct.pt_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_block, align 4
  %9 = alloca %struct.pt_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %5, align 8
  store %struct.pt_block* %1, %struct.pt_block** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %13 = icmp ne %struct.pt_block_decoder* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.pt_block*, %struct.pt_block** %6, align 8
  %16 = icmp ne %struct.pt_block* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @pte_invalid, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 12
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load %struct.pt_block*, %struct.pt_block** %6, align 8
  br label %26

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi %struct.pt_block* [ %24, %23 ], [ %8, %25 ]
  store %struct.pt_block* %27, %struct.pt_block** %9, align 8
  %28 = load %struct.pt_block*, %struct.pt_block** %9, align 8
  %29 = call i32 @memset(%struct.pt_block* %28, i32 0, i32 12)
  %30 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %31 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pt_block*, %struct.pt_block** %9, align 8
  %34 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %36 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pt_block*, %struct.pt_block** %9, align 8
  %39 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %41 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load %struct.pt_block*, %struct.pt_block** %9, align 8
  %46 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %26
  %48 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %49 = load %struct.pt_block*, %struct.pt_block** %9, align 8
  %50 = call i32 @pt_blk_proceed(%struct.pt_block_decoder* %48, %struct.pt_block* %49)
  store i32 %50, i32* %11, align 4
  %51 = load %struct.pt_block*, %struct.pt_block** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.pt_block*, %struct.pt_block** %9, align 8
  %54 = call i32 @block_to_user(%struct.pt_block* %51, i64 %52, %struct.pt_block* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %57, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.pt_block*, i32, i32) #1

declare dso_local i32 @pt_blk_proceed(%struct.pt_block_decoder*, %struct.pt_block*) #1

declare dso_local i32 @block_to_user(%struct.pt_block*, i64, %struct.pt_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
