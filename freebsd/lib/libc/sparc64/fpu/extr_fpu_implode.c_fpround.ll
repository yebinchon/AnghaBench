; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sparc64/fpu/extr_fpu_implode.c_fpround.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sparc64/fpu/extr_fpu_implode.c_fpround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32, i32 }
%struct.fpn = type { i32*, i32, i32 }

@FP_NG = common dso_local global i32 0, align 4
@FSR_NX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpemu*, %struct.fpn*)* @fpround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpround(%struct.fpemu* %0, %struct.fpn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpemu*, align 8
  %5 = alloca %struct.fpn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %4, align 8
  store %struct.fpn* %1, %struct.fpn** %5, align 8
  %12 = load %struct.fpn*, %struct.fpn** %5, align 8
  %13 = getelementptr inbounds %struct.fpn, %struct.fpn* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.fpn*, %struct.fpn** %5, align 8
  %18 = getelementptr inbounds %struct.fpn, %struct.fpn* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.fpn*, %struct.fpn** %5, align 8
  %23 = getelementptr inbounds %struct.fpn, %struct.fpn* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.fpn*, %struct.fpn** %5, align 8
  %28 = getelementptr inbounds %struct.fpn, %struct.fpn* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 3
  store i32 %33, i32* %10, align 4
  %34 = load %struct.fpn*, %struct.fpn** %5, align 8
  %35 = getelementptr inbounds %struct.fpn, %struct.fpn* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @FP_NG, align 4
  %39 = ashr i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @FP_NG, align 4
  %42 = sub nsw i32 32, %41
  %43 = shl i32 %40, %42
  %44 = or i32 %39, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @FP_NG, align 4
  %47 = ashr i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @FP_NG, align 4
  %50 = sub nsw i32 32, %49
  %51 = shl i32 %48, %50
  %52 = or i32 %47, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @FP_NG, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @FP_NG, align 4
  %58 = sub nsw i32 32, %57
  %59 = shl i32 %56, %58
  %60 = or i32 %55, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @FP_NG, align 4
  %62 = load i32, i32* %6, align 4
  %63 = ashr i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %2
  br label %148

69:                                               ; preds = %2
  %70 = load i32, i32* @FSR_NX, align 4
  %71 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %72 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %76 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FSR_GET_RD(i32 %77)
  switch i32 %78, label %80 [
    i32 131, label %79
    i32 128, label %100
    i32 130, label %101
    i32 129, label %108
  ]

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %69, %79
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %148

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = load %struct.fpn*, %struct.fpn** %5, align 8
  %91 = getelementptr inbounds %struct.fpn, %struct.fpn* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 1
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %89, %85
  br label %115

99:                                               ; preds = %94
  br label %148

100:                                              ; preds = %69
  br label %148

101:                                              ; preds = %69
  %102 = load %struct.fpn*, %struct.fpn** %5, align 8
  %103 = getelementptr inbounds %struct.fpn, %struct.fpn* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %115

107:                                              ; preds = %101
  br label %148

108:                                              ; preds = %69
  %109 = load %struct.fpn*, %struct.fpn** %5, align 8
  %110 = getelementptr inbounds %struct.fpn, %struct.fpn* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %115

114:                                              ; preds = %108
  br label %148

115:                                              ; preds = %113, %106, %98
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @FPU_ADDS(i32 %116, i32 %117, i32 1)
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @FPU_ADDCS(i32 %119, i32 %120, i32 0)
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @FPU_ADDCS(i32 %122, i32 %123, i32 0)
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @FPU_ADDC(i32 %125, i32 %126, i32 0)
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.fpn*, %struct.fpn** %5, align 8
  %130 = getelementptr inbounds %struct.fpn, %struct.fpn* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.fpn*, %struct.fpn** %5, align 8
  %135 = getelementptr inbounds %struct.fpn, %struct.fpn* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.fpn*, %struct.fpn** %5, align 8
  %140 = getelementptr inbounds %struct.fpn, %struct.fpn* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32 %138, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.fpn*, %struct.fpn** %5, align 8
  %145 = getelementptr inbounds %struct.fpn, %struct.fpn* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 3
  store i32 %143, i32* %147, align 4
  store i32 1, i32* %3, align 4
  br label %169

148:                                              ; preds = %114, %107, %100, %99, %84, %68
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.fpn*, %struct.fpn** %5, align 8
  %151 = getelementptr inbounds %struct.fpn, %struct.fpn* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.fpn*, %struct.fpn** %5, align 8
  %156 = getelementptr inbounds %struct.fpn, %struct.fpn* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 %154, i32* %158, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.fpn*, %struct.fpn** %5, align 8
  %161 = getelementptr inbounds %struct.fpn, %struct.fpn* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  store i32 %159, i32* %163, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.fpn*, %struct.fpn** %5, align 8
  %166 = getelementptr inbounds %struct.fpn, %struct.fpn* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  store i32 %164, i32* %168, align 4
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %148, %115
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @FSR_GET_RD(i32) #1

declare dso_local i32 @FPU_ADDS(i32, i32, i32) #1

declare dso_local i32 @FPU_ADDCS(i32, i32, i32) #1

declare dso_local i32 @FPU_ADDC(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
