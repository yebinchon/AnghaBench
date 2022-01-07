; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_to_ptwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_to_ptwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32 }
%struct.pt_block = type { i32 }
%struct.pt_insn = type { i32 }
%struct.pt_insn_ext = type { i32 }
%struct.pt_event = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pt_insn_is_ptwrite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, %struct.pt_event*)* @pt_blk_proceed_to_ptwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_to_ptwrite(%struct.pt_block_decoder* %0, %struct.pt_block* %1, %struct.pt_insn* %2, %struct.pt_insn_ext* %3, %struct.pt_event* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_block_decoder*, align 8
  %8 = alloca %struct.pt_block*, align 8
  %9 = alloca %struct.pt_insn*, align 8
  %10 = alloca %struct.pt_insn_ext*, align 8
  %11 = alloca %struct.pt_event*, align 8
  %12 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %7, align 8
  store %struct.pt_block* %1, %struct.pt_block** %8, align 8
  store %struct.pt_insn* %2, %struct.pt_insn** %9, align 8
  store %struct.pt_insn_ext* %3, %struct.pt_insn_ext** %10, align 8
  store %struct.pt_event* %4, %struct.pt_event** %11, align 8
  %13 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %14 = icmp ne %struct.pt_insn* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %17 = icmp ne %struct.pt_event* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %5
  %19 = load i32, i32* @pte_internal, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %74

21:                                               ; preds = %15
  %22 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %23 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %28 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %29 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %30 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %31 = load i32, i32* @pt_insn_is_ptwrite, align 4
  %32 = call i32 @pt_blk_proceed_to_insn(%struct.pt_block_decoder* %27, %struct.pt_block* %28, %struct.pt_insn* %29, %struct.pt_insn_ext* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %74

37:                                               ; preds = %26
  %38 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %39 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %42 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %46 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %73

47:                                               ; preds = %21
  %48 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %49 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %50 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %51 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %52 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %53 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder* %48, %struct.pt_block* %49, %struct.pt_insn* %50, %struct.pt_insn_ext* %51, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %6, align 4
  br label %74

62:                                               ; preds = %47
  %63 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %64 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %65 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %66 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %67 = call i32 @pt_blk_proceed_one_insn(%struct.pt_block_decoder* %63, %struct.pt_block* %64, %struct.pt_insn* %65, %struct.pt_insn_ext* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %6, align 4
  br label %74

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %37
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %70, %60, %35, %18
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @pt_blk_proceed_to_insn(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, i32) #1

declare dso_local i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, i32) #1

declare dso_local i32 @pt_blk_proceed_one_insn(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
