; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_show_perf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c_show_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@STEP_CNT = common dso_local global i32 0, align 4
@connections = common dso_local global i32 0, align 4
@nodes = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"step              total ms     max ms     min us  us / conn\0A\00", align 1
@STEP_BIND = common dso_local global i32 0, align 4
@src_addr = common dso_local global i32 0, align 4
@times = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"%-13s: %11.2f%11.2f%11.2f%11.2f\0A\00", align 1
@step_str = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_perf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @STEP_CNT, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca float, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @STEP_CNT, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca float, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %110, %0
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @STEP_CNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %113

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %10, i64 %20
  store float 0.000000e+00, float* %21, align 4
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %13, i64 %23
  store float 1.000000e+09, float* %24, align 4
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %106, %18
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @connections, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %109

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nodes, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @zero_time(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %105, label %43

43:                                               ; preds = %29
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nodes, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = call i32 @zero_time(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %105, label %57

57:                                               ; preds = %43
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nodes, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nodes, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = call float @diff_us(i32* %68, i32* %79)
  store float %80, float* %3, align 4
  %81 = load float, float* %3, align 4
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %10, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fcmp ogt float %81, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %57
  %88 = load float, float* %3, align 4
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %10, i64 %90
  store float %88, float* %91, align 4
  br label %92

92:                                               ; preds = %87, %57
  %93 = load float, float* %3, align 4
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %13, i64 %95
  %97 = load float, float* %96, align 4
  %98 = fcmp olt float %93, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load float, float* %3, align 4
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %13, i64 %102
  store float %100, float* %103, align 4
  br label %104

104:                                              ; preds = %99, %92
  br label %105

105:                                              ; preds = %104, %43, %29
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %1, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %1, align 4
  br label %25

109:                                              ; preds = %25
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %2, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %2, align 4
  br label %14

113:                                              ; preds = %14
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %166, %113
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @STEP_CNT, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %169

119:                                              ; preds = %115
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* @STEP_BIND, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* @src_addr, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  br label %166

127:                                              ; preds = %123, %119
  %128 = load i32**, i32*** @times, align 8
  %129 = load i32, i32* %2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32**, i32*** @times, align 8
  %135 = load i32, i32* %2, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = call float @diff_us(i32* %133, i32* %139)
  store float %140, float* %3, align 4
  %141 = load i8**, i8*** @step_str, align 8
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load float, float* %3, align 4
  %147 = fpext float %146 to double
  %148 = fdiv double %147, 1.000000e+03
  %149 = load i32, i32* %2, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %10, i64 %150
  %152 = load float, float* %151, align 4
  %153 = fpext float %152 to double
  %154 = fdiv double %153, 1.000000e+03
  %155 = load i32, i32* %2, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %13, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fpext float %158 to double
  %160 = load float, float* %3, align 4
  %161 = load i32, i32* @connections, align 4
  %162 = sitofp i32 %161 to float
  %163 = fdiv float %160, %162
  %164 = fpext float %163 to double
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %145, double %148, double %154, double %159, double %164)
  br label %166

166:                                              ; preds = %127, %126
  %167 = load i32, i32* %2, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %2, align 4
  br label %115

169:                                              ; preds = %115
  %170 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %170)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zero_time(i32*) #2

declare dso_local float @diff_us(i32*, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
