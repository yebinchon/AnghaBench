; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_to_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_to_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.pt_block = type { i32 }
%struct.pt_insn = type { i64 }
%struct.pt_insn_ext = type opaque

@pte_internal = common dso_local global i32 0, align 4
@ptic_call = common dso_local global i64 0, align 8
@ptic_jump = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*, i32 (%struct.pt_insn*, %struct.pt_insn_ext*)*)* @pt_blk_proceed_to_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_to_insn(%struct.pt_block_decoder* %0, %struct.pt_block* %1, %struct.pt_insn* %2, %struct.pt_insn_ext* %3, i32 (%struct.pt_insn*, %struct.pt_insn_ext*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_block_decoder*, align 8
  %8 = alloca %struct.pt_block*, align 8
  %9 = alloca %struct.pt_insn*, align 8
  %10 = alloca %struct.pt_insn_ext*, align 8
  %11 = alloca i32 (%struct.pt_insn*, %struct.pt_insn_ext*)*, align 8
  %12 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %7, align 8
  store %struct.pt_block* %1, %struct.pt_block** %8, align 8
  store %struct.pt_insn* %2, %struct.pt_insn** %9, align 8
  store %struct.pt_insn_ext* %3, %struct.pt_insn_ext** %10, align 8
  store i32 (%struct.pt_insn*, %struct.pt_insn_ext*)* %4, i32 (%struct.pt_insn*, %struct.pt_insn_ext*)** %11, align 8
  %13 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %14 = icmp ne %struct.pt_block_decoder* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %17 = icmp ne %struct.pt_insn* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32 (%struct.pt_insn*, %struct.pt_insn_ext*)*, i32 (%struct.pt_insn*, %struct.pt_insn_ext*)** %11, align 8
  %20 = icmp ne i32 (%struct.pt_insn*, %struct.pt_insn_ext*)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %15, %5
  %22 = load i32, i32* @pte_internal, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %84

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %83, %24
  %26 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %27 = load %struct.pt_block*, %struct.pt_block** %8, align 8
  %28 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %29 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %30 = call i32 @pt_blk_proceed_one_insn(%struct.pt_block_decoder* %26, %struct.pt_block* %27, %struct.pt_insn* %28, %struct.pt_insn_ext* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %84

35:                                               ; preds = %25
  %36 = load i32 (%struct.pt_insn*, %struct.pt_insn_ext*)*, i32 (%struct.pt_insn*, %struct.pt_insn_ext*)** %11, align 8
  %37 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %38 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %39 = call i32 %36(%struct.pt_insn* %37, %struct.pt_insn_ext* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %84

44:                                               ; preds = %35
  %45 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %46 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %45, i32 0, i32 1
  %47 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %48 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %10, align 8
  %49 = call i32 @pt_insn_next_ip(i32* %46, %struct.pt_insn* %47, %struct.pt_insn_ext* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %6, align 4
  br label %84

54:                                               ; preds = %44
  %55 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %56 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %64 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ptic_call, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %82, label %68

68:                                               ; preds = %62, %54
  %69 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %70 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.pt_insn*, %struct.pt_insn** %9, align 8
  %78 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ptic_jump, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %62
  store i32 0, i32* %6, align 4
  br label %84

83:                                               ; preds = %76, %68
  br label %25

84:                                               ; preds = %82, %52, %42, %33, %21
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @pt_blk_proceed_one_insn(%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_next_ip(i32*, %struct.pt_insn*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
