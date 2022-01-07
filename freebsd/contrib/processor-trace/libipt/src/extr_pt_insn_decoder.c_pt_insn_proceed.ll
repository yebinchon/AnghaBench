; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_proceed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_proceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, i32, i32 }
%struct.pt_insn = type { i32, i64 }
%struct.pt_insn_ext = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_retcomp = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@pts_ip_suppressed = common dso_local global i32 0, align 4
@pte_noip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*)* @pt_insn_proceed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_proceed(%struct.pt_insn_decoder* %0, %struct.pt_insn* %1, %struct.pt_insn_ext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_insn_decoder*, align 8
  %6 = alloca %struct.pt_insn*, align 8
  %7 = alloca %struct.pt_insn_ext*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %5, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %6, align 8
  store %struct.pt_insn_ext* %2, %struct.pt_insn_ext** %7, align 8
  %13 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %14 = icmp ne %struct.pt_insn_decoder* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %17 = icmp ne %struct.pt_insn* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %20 = icmp ne %struct.pt_insn_ext* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %15, %3
  %22 = load i32, i32* @pte_internal, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %141

24:                                               ; preds = %18
  %25 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %26 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %29 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %35 = getelementptr inbounds %struct.pt_insn, %struct.pt_insn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %100 [
    i32 129, label %37
    i32 130, label %37
    i32 136, label %38
    i32 137, label %53
    i32 128, label %75
    i32 131, label %96
    i32 134, label %96
    i32 132, label %96
    i32 133, label %96
    i32 135, label %97
  ]

37:                                               ; preds = %24, %24
  store i32 0, i32* %4, align 4
  br label %141

38:                                               ; preds = %24
  %39 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %40 = call i32 @pt_insn_cond_branch(%struct.pt_insn_decoder* %39, i32* %9)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %141

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %48 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %141

52:                                               ; preds = %45
  br label %100

53:                                               ; preds = %24
  %54 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %55 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %62 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60, %53
  %68 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %69 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %68, i32 0, i32 2
  %70 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %71 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pt_retstack_push(i32* %69, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  br label %100

75:                                               ; preds = %24
  %76 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %77 = call i32 @pt_insn_cond_branch(%struct.pt_insn_decoder* %76, i32* %10)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %83 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @pte_bad_retcomp, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %141

89:                                               ; preds = %80
  %90 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %91 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %90, i32 0, i32 2
  %92 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %93 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %92, i32 0, i32 1
  %94 = call i32 @pt_retstack_pop(i32* %91, i32* %93)
  store i32 %94, i32* %4, align 4
  br label %141

95:                                               ; preds = %75
  br label %100

96:                                               ; preds = %24, %24, %24, %24
  br label %100

97:                                               ; preds = %24
  %98 = load i32, i32* @pte_bad_insn, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %141

100:                                              ; preds = %24, %96, %95, %74, %52
  %101 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %102 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %100
  %108 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %109 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %114 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  br label %140

119:                                              ; preds = %100
  %120 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %121 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %122 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %121, i32 0, i32 1
  %123 = call i32 @pt_insn_indirect_branch(%struct.pt_insn_decoder* %120, i32* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %4, align 4
  br label %141

128:                                              ; preds = %119
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %131 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @pts_ip_suppressed, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* @pte_noip, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %141

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %107
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %136, %126, %97, %89, %86, %51, %43, %37, %21
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @pt_insn_cond_branch(%struct.pt_insn_decoder*, i32*) #1

declare dso_local i32 @pt_retstack_push(i32*, i32) #1

declare dso_local i32 @pt_retstack_pop(i32*, i32*) #1

declare dso_local i32 @pt_insn_indirect_branch(%struct.pt_insn_decoder*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
