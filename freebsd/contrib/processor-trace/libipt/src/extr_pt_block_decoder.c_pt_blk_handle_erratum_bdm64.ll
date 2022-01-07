; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_handle_erratum_bdm64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_handle_erratum_bdm64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32, i32 }
%struct.pt_block = type { i32, i32 }
%struct.pt_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pt_insn_ext = type { i32 }
%struct.pt_insn = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@bdm64_max_steps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_event*)* @pt_blk_handle_erratum_bdm64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_handle_erratum_bdm64(%struct.pt_block_decoder* %0, %struct.pt_block* %1, %struct.pt_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_block_decoder*, align 8
  %6 = alloca %struct.pt_block*, align 8
  %7 = alloca %struct.pt_event*, align 8
  %8 = alloca %struct.pt_insn_ext, align 4
  %9 = alloca %struct.pt_insn, align 4
  %10 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %5, align 8
  store %struct.pt_block* %1, %struct.pt_block** %6, align 8
  store %struct.pt_event* %2, %struct.pt_event** %7, align 8
  %11 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %12 = icmp ne %struct.pt_block_decoder* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.pt_block*, %struct.pt_block** %6, align 8
  %15 = icmp ne %struct.pt_block* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.pt_event*, %struct.pt_event** %7, align 8
  %18 = icmp ne %struct.pt_event* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @pte_internal, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %88

22:                                               ; preds = %16
  %23 = load %struct.pt_event*, %struct.pt_event** %7, align 8
  %24 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %88

30:                                               ; preds = %22
  %31 = load %struct.pt_block*, %struct.pt_block** %6, align 8
  %32 = call i64 @pt_blk_block_is_empty(%struct.pt_block* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %88

35:                                               ; preds = %30
  %36 = load %struct.pt_block*, %struct.pt_block** %6, align 8
  %37 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.pt_block*, %struct.pt_block** %6, align 8
  %41 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %9, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %45 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %48 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %47, i32 0, i32 1
  %49 = call i32 @pt_insn_decode(%struct.pt_insn* %9, %struct.pt_insn_ext* %8, i32 %46, i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %88

53:                                               ; preds = %35
  %54 = call i32 @pt_insn_is_branch(%struct.pt_insn* %9, %struct.pt_insn_ext* %8)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %88

57:                                               ; preds = %53
  %58 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %59 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pt_event*, %struct.pt_event** %7, align 8
  %62 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %67 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %70 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %73 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %72, i32 0, i32 1
  %74 = load i32, i32* @bdm64_max_steps, align 4
  %75 = call i32 @pt_insn_range_is_contiguous(i32 %60, i32 %65, i32 %68, i32 %71, i32* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %57
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %88

80:                                               ; preds = %57
  %81 = load %struct.pt_event*, %struct.pt_event** %7, align 8
  %82 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %5, align 8
  %87 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %80, %78, %56, %52, %34, %29, %19
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @pt_blk_block_is_empty(%struct.pt_block*) #1

declare dso_local i32 @pt_insn_decode(%struct.pt_insn*, %struct.pt_insn_ext*, i32, i32*) #1

declare dso_local i32 @pt_insn_is_branch(%struct.pt_insn*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_range_is_contiguous(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
