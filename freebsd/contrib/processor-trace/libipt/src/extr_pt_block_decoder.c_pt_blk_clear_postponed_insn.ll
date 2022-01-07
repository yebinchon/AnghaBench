; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_clear_postponed_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_clear_postponed_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i64, i64, i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*)* @pt_blk_clear_postponed_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_clear_postponed_insn(%struct.pt_block_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_block_decoder*, align 8
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %3, align 8
  %4 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %5 = icmp ne %struct.pt_block_decoder* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @pte_internal, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %11 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %13 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %9, %6
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
