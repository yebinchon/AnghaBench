; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_one_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_proceed_one_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32, i32 }
%struct.pt_block = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.pt_insn = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.pt_insn_ext = type { i64, i32, i32, i32, i32, i64, i32 }

@pte_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_block*, %struct.pt_insn*, %struct.pt_insn_ext*)* @pt_blk_proceed_one_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_proceed_one_insn(%struct.pt_block_decoder* %0, %struct.pt_block* %1, %struct.pt_insn* %2, %struct.pt_insn_ext* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_block_decoder*, align 8
  %7 = alloca %struct.pt_block*, align 8
  %8 = alloca %struct.pt_insn*, align 8
  %9 = alloca %struct.pt_insn_ext*, align 8
  %10 = alloca %struct.pt_insn_ext, align 8
  %11 = alloca %struct.pt_insn, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %6, align 8
  store %struct.pt_block* %1, %struct.pt_block** %7, align 8
  store %struct.pt_insn* %2, %struct.pt_insn** %8, align 8
  store %struct.pt_insn_ext* %3, %struct.pt_insn_ext** %9, align 8
  %14 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %6, align 8
  %15 = icmp ne %struct.pt_block_decoder* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %18 = icmp ne %struct.pt_block* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %21 = icmp ne %struct.pt_insn* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %24 = icmp ne %struct.pt_insn_ext* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %19, %16, %4
  %26 = load i32, i32* @pte_internal, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %127

28:                                               ; preds = %22
  %29 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %30 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %127

36:                                               ; preds = %28
  %37 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %38 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %127

42:                                               ; preds = %36
  %43 = bitcast %struct.pt_insn* %11 to %struct.pt_insn_ext*
  %44 = call i32 @memset(%struct.pt_insn_ext* %43, i32 0, i32 40)
  %45 = call i32 @memset(%struct.pt_insn_ext* %10, i32 0, i32 40)
  %46 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %6, align 8
  %47 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 6
  store i32 %48, i32* %49, align 8
  %50 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %6, align 8
  %51 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = bitcast %struct.pt_insn* %11 to %struct.pt_insn_ext*
  %55 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %6, align 8
  %56 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %6, align 8
  %59 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %58, i32 0, i32 0
  %60 = call i32 @pt_insn_decode(%struct.pt_insn_ext* %54, %struct.pt_insn_ext* %10, i32 %57, i32* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %42
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %5, align 4
  br label %127

65:                                               ; preds = %42
  %66 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %69 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %74 = call i32 @pt_blk_block_is_empty(%struct.pt_block* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %127

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %81 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %77, %65
  %83 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %88 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @memcpy(i32 %89, i32 %91, i32 %93)
  %95 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %98 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 8
  %99 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %100 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %86, %82
  %102 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %6, align 8
  %103 = bitcast %struct.pt_insn* %11 to %struct.pt_insn_ext*
  %104 = call i32 @pt_blk_log_call(%struct.pt_block_decoder* %102, %struct.pt_insn_ext* %103, %struct.pt_insn_ext* %10)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %5, align 4
  br label %127

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %113 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %11, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %117 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.pt_block*, %struct.pt_block** %7, align 8
  %120 = getelementptr inbounds %struct.pt_block, %struct.pt_block* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  %121 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %122 = bitcast %struct.pt_insn* %121 to i8*
  %123 = bitcast %struct.pt_insn* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 40, i1 false)
  %124 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %125 = bitcast %struct.pt_insn_ext* %124 to i8*
  %126 = bitcast %struct.pt_insn_ext* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 40, i1 false)
  store i32 1, i32* %5, align 4
  br label %127

127:                                              ; preds = %109, %107, %76, %63, %41, %35, %25
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @memset(%struct.pt_insn_ext*, i32, i32) #1

declare dso_local i32 @pt_insn_decode(%struct.pt_insn_ext*, %struct.pt_insn_ext*, i32, i32*) #1

declare dso_local i32 @pt_blk_block_is_empty(%struct.pt_block*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pt_blk_log_call(%struct.pt_block_decoder*, %struct.pt_insn_ext*, %struct.pt_insn_ext*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
