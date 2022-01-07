; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_log_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_log_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32 }
%struct.pt_insn = type { i64, i64, i64 }
%struct.pt_insn_ext = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@pte_internal = common dso_local global i32 0, align 4
@ptic_call = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*)* @pt_blk_log_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_log_call(%struct.pt_block_decoder* %0, %struct.pt_insn* %1, %struct.pt_insn_ext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_block_decoder*, align 8
  %6 = alloca %struct.pt_insn*, align 8
  %7 = alloca %struct.pt_insn_ext*, align 8
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %5, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %6, align 8
  store %struct.pt_insn_ext* %2, %struct.pt_insn_ext** %7, align 8
  %8 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %9 = icmp ne %struct.pt_block_decoder* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %12 = icmp ne %struct.pt_insn* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %15 = icmp ne %struct.pt_insn_ext* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %10, %3
  %17 = load i32, i32* @pte_internal, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %13
  %20 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %21 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ptic_call, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %52

26:                                               ; preds = %19
  %27 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %28 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %35 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %52

41:                                               ; preds = %33, %26
  %42 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %43 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %42, i32 0, i32 0
  %44 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %45 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %48 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @pt_retstack_push(i32* %43, i64 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %41, %40, %25, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @pt_retstack_push(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
