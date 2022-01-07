; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_truncated.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_truncated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32, i32 }
%struct.pt_block = type { i32, i32, i32, i32 }
%struct.pt_insn_ext = type { i32, i32, i32, i32, i32, i32 }
%struct.pt_insn = type { i32, i32, i32, i32, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*)* @pt_blk_proceed_truncated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_truncated(%struct.pt_block_decoder* %0, %struct.pt_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_block*, align 8
  %6 = alloca %struct.pt_insn_ext, align 4
  %7 = alloca %struct.pt_insn, align 4
  %8 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_block* %1, %struct.pt_block** %5, align 8
  %9 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %10 = icmp ne %struct.pt_block_decoder* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %13 = icmp ne %struct.pt_block* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %92

17:                                               ; preds = %11
  %18 = call i32 @memset(%struct.pt_insn_ext* %6, i32 0, i32 24)
  %19 = bitcast %struct.pt_insn* %7 to %struct.pt_insn_ext*
  %20 = call i32 @memset(%struct.pt_insn_ext* %19, i32 0, i32 24)
  %21 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %22 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %7, i32 0, i32 5
  store i32 %23, i32* %24, align 4
  %25 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %26 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %7, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.pt_insn* %7 to %struct.pt_insn_ext*
  %30 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %31 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %34 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %33, i32 0, i32 1
  %35 = call i32 @pt_insn_decode(%struct.pt_insn_ext* %29, %struct.pt_insn_ext* %6, i32 %32, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %17
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %92

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %7, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @pte_internal, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %92

47:                                               ; preds = %40
  %48 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %49 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %7, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %7, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32 %50, i32 %52, i32 %54)
  %56 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %59 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %63 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.pt_block*, %struct.pt_block** %5, align 8
  %65 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  %66 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %67 = bitcast %struct.pt_insn* %7 to %struct.pt_insn_ext*
  %68 = call i32 @pt_blk_log_call(%struct.pt_block_decoder* %66, %struct.pt_insn_ext* %67, %struct.pt_insn_ext* %6)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %47
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %92

73:                                               ; preds = %47
  %74 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %75 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %74, i32 0, i32 0
  %76 = bitcast %struct.pt_insn* %7 to %struct.pt_insn_ext*
  %77 = call i32 @pt_insn_next_ip(i32* %75, %struct.pt_insn_ext* %76, %struct.pt_insn_ext* %6)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @pte_bad_query, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %92

87:                                               ; preds = %80
  %88 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %89 = bitcast %struct.pt_insn* %7 to %struct.pt_insn_ext*
  %90 = call i32 @pt_blk_proceed_with_trace(%struct.pt_block_decoder* %88, %struct.pt_insn_ext* %89, %struct.pt_insn_ext* %6)
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %87, %85, %71, %44, %38, %14
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @memset(%struct.pt_insn_ext*, i32, i32) #1

declare dso_local i32 @pt_insn_decode(%struct.pt_insn_ext*, %struct.pt_insn_ext*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pt_blk_log_call(%struct.pt_block_decoder*, %struct.pt_insn_ext*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_insn_next_ip(i32*, %struct.pt_insn_ext*, %struct.pt_insn_ext*) #1

declare dso_local i32 @pt_blk_proceed_with_trace(%struct.pt_block_decoder*, %struct.pt_insn_ext*, %struct.pt_insn_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
