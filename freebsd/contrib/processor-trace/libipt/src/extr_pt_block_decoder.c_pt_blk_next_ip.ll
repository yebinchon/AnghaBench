; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_next_ip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_next_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32 }
%struct.pt_insn = type { i32, i64, i64 }
%struct.pt_insn_ext = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_query = common dso_local global i32 0, align 4
@pte_bad_retcomp = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.pt_block_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*)* @pt_blk_next_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_next_ip(i64* %0, %struct.pt_block_decoder* %1, %struct.pt_insn* %2, %struct.pt_insn_ext* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.pt_block_decoder*, align 8
  %8 = alloca %struct.pt_insn*, align 8
  %9 = alloca %struct.pt_insn_ext*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store %struct.pt_block_decoder* %1, %struct.pt_block_decoder** %7, align 8
  store %struct.pt_insn* %2, %struct.pt_insn** %8, align 8
  store %struct.pt_insn_ext* %3, %struct.pt_insn_ext** %9, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %19 = icmp ne %struct.pt_block_decoder* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %22 = icmp ne %struct.pt_insn* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %25 = icmp ne %struct.pt_insn_ext* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %20, %17, %4
  %27 = load i32, i32* @pte_internal, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %115

29:                                               ; preds = %23
  %30 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %31 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %111 [
    i32 136, label %33
    i32 128, label %63
    i32 131, label %93
    i32 137, label %93
    i32 134, label %104
    i32 132, label %104
    i32 133, label %104
    i32 129, label %105
    i32 130, label %105
    i32 135, label %108
  ]

33:                                               ; preds = %29
  %34 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %35 = call i32 @pt_blk_cond_branch(%struct.pt_block_decoder* %34, i32* %13)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %115

40:                                               ; preds = %33
  %41 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %42 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.pt_insn*, %struct.pt_insn** %8, align 8
  %45 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %52 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %50, %40
  %60 = load i64, i64* %12, align 8
  %61 = load i64*, i64** %6, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %115

63:                                               ; preds = %29
  %64 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %65 = call i32 @pt_blk_cond_branch(%struct.pt_block_decoder* %64, i32* %14)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @pte_bad_query, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %115

75:                                               ; preds = %68
  br label %111

76:                                               ; preds = %63
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @pte_bad_retcomp, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %115

82:                                               ; preds = %76
  %83 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %84 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %83, i32 0, i32 0
  %85 = load i64*, i64** %6, align 8
  %86 = call i32 @pt_retstack_pop(i32* %84, i64* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %5, align 4
  br label %115

91:                                               ; preds = %82
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %115

93:                                               ; preds = %29, %29
  %94 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %9, align 8
  %95 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @pte_internal, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %115

103:                                              ; preds = %93
  br label %111

104:                                              ; preds = %29, %29, %29
  br label %111

105:                                              ; preds = %29, %29
  %106 = load i32, i32* @pte_internal, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %115

108:                                              ; preds = %29
  %109 = load i32, i32* @pte_bad_insn, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %115

111:                                              ; preds = %29, %104, %103, %75
  %112 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %7, align 8
  %113 = load i64*, i64** %6, align 8
  %114 = call i32 @pt_blk_indirect_branch(%struct.pt_block_decoder* %112, i64* %113)
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %108, %105, %100, %91, %89, %79, %73, %59, %38, %26
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @pt_blk_cond_branch(%struct.pt_block_decoder*, i32*) #1

declare dso_local i32 @pt_retstack_pop(i32*, i64*) #1

declare dso_local i32 @pt_blk_indirect_branch(%struct.pt_block_decoder*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
