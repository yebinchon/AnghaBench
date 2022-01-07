; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_set_disable_resume_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_set_disable_resume_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i64 }
%struct.pt_insn = type { i32, i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_insn*)* @pt_blk_set_disable_resume_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_set_disable_resume_ip(%struct.pt_block_decoder* %0, %struct.pt_insn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_insn*, align 8
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %5, align 8
  %6 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %7 = icmp ne %struct.pt_block_decoder* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %10 = icmp ne %struct.pt_insn* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @pte_internal, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %8
  %15 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %16 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %28 [
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %14, %14
  %19 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %20 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.pt_insn*, %struct.pt_insn** %5, align 8
  %23 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  %26 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %27 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %31

28:                                               ; preds = %14
  %29 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %30 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %18
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
