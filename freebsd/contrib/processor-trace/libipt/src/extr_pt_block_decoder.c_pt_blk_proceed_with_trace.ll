; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_with_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_with_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32 }
%struct.pt_insn = type { i32 }
%struct.pt_insn_ext = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pts_ip_suppressed = common dso_local global i32 0, align 4
@pte_noip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*)* @pt_blk_proceed_with_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_with_trace(%struct.pt_block_decoder* %0, %struct.pt_insn* %1, %struct.pt_insn_ext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_block_decoder*, align 8
  %6 = alloca %struct.pt_insn*, align 8
  %7 = alloca %struct.pt_insn_ext*, align 8
  %8 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %5, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %6, align 8
  store %struct.pt_insn_ext* %2, %struct.pt_insn_ext** %7, align 8
  %9 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %10 = icmp ne %struct.pt_block_decoder* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %37

14:                                               ; preds = %3
  %15 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %16 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %15, i32 0, i32 1
  %17 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %18 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %19 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %20 = call i32 @pt_blk_next_ip(i32* %16, %struct.pt_block_decoder* %17, %struct.pt_insn* %18, %struct.pt_insn_ext* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %14
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %28 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @pts_ip_suppressed, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @pte_noip, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33, %23, %11
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @pt_blk_next_ip(i32*, %struct.pt_block_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
