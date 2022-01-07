; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_to_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_to_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.pt_block = type { i32 }
%struct.pt_insn = type { i64 }
%struct.pt_insn_ext = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@ptic_call = common dso_local global i64 0, align 8
@ptic_jump = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, i64)* @pt_blk_proceed_to_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_to_ip(%struct.pt_block_decoder* %0, %struct.pt_block* %1, %struct.pt_insn* %2, %struct.pt_insn_ext* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_block_decoder*, align 8
  %8 = alloca %struct.pt_block*, align 8
  %9 = alloca %struct.pt_insn*, align 8
  %10 = alloca %struct.pt_insn_ext*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %7, align 8
  store %struct.pt_block* %1, %struct.pt_block** %8, align 8
  store %struct.pt_insn* %2, %struct.pt_insn** %9, align 8
  store %struct.pt_insn_ext* %3, %struct.pt_insn_ext** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %14 = icmp ne %struct.pt_block_decoder* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %17 = icmp ne %struct.pt_insn* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %5
  %19 = load i32, i32* @pte_internal, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %86

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %85, %21
  %23 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %24 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %86

29:                                               ; preds = %22
  %30 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %31 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %32 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %33 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %34 = call i32 @pt_blk_proceed_one_insn(%struct.pt_block_decoder* %30, %struct.pt_block* %31, %struct.pt_insn* %32, %struct.pt_insn_ext* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %6, align 4
  br label %86

39:                                               ; preds = %29
  %40 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %41 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %40, i32 0, i32 0
  %42 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %43 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %44 = call i32 @pt_insn_next_ip(i64* %41, %struct.pt_insn* %42, %struct.pt_insn_ext* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %86

49:                                               ; preds = %39
  %50 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %51 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %59 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ptic_call, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %77, label %63

63:                                               ; preds = %57, %49
  %64 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %65 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %63
  %72 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %73 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ptic_jump, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71, %57
  %78 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %79 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  store i32 %84, i32* %6, align 4
  br label %86

85:                                               ; preds = %71, %63
  br label %22

86:                                               ; preds = %77, %47, %37, %28, %18
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @pt_blk_proceed_one_insn(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_next_ip(i64*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
