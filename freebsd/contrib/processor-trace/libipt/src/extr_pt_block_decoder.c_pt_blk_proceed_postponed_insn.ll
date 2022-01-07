; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_postponed_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_postponed_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*)* @pt_blk_proceed_postponed_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_postponed_insn(%struct.pt_block_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_block_decoder*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %3, align 8
  %5 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %6 = icmp ne %struct.pt_block_decoder* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @pte_internal, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  %11 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %12 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %56

16:                                               ; preds = %10
  %17 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %23 = call i32 @pt_blk_clear_postponed_insn(%struct.pt_block_decoder* %22)
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %16
  %25 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %25, i32 0, i32 2
  %27 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %28 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %27, i32 0, i32 1
  %29 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %29, i32 0, i32 0
  %31 = call i32 @pt_insn_next_ip(i32* %26, i32* %28, i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @pte_bad_query, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %34
  %42 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %43 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %44 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %43, i32 0, i32 1
  %45 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %46 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %45, i32 0, i32 0
  %47 = call i32 @pt_blk_proceed_with_trace(%struct.pt_block_decoder* %42, i32* %44, i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %24
  %54 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %55 = call i32 @pt_blk_clear_postponed_insn(%struct.pt_block_decoder* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %50, %39, %21, %15, %7
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @pt_blk_clear_postponed_insn(%struct.pt_block_decoder*) #1

declare dso_local i32 @pt_insn_next_ip(i32*, i32*, i32*) #1

declare dso_local i32 @pt_blk_proceed_with_trace(%struct.pt_block_decoder*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
