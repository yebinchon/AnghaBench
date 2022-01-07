; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_letter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_letter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8, i32, i32, i64, i64 }

@PS_BACKSP = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i32)* @ps_letter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_letter(%struct.termp* %0, i32 %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 128
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %15

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 63, %12 ], [ %14, %13 ]
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %6, align 1
  %18 = load i8, i8* %6, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = load %struct.termp*, %struct.termp** %3, align 8
  %23 = getelementptr inbounds %struct.termp, %struct.termp* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 8
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.termp*, %struct.termp** %3, align 8
  %32 = getelementptr inbounds %struct.termp, %struct.termp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PS_BACKSP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* @PS_BACKSP, align 4
  %43 = load %struct.termp*, %struct.termp** %3, align 8
  %44 = getelementptr inbounds %struct.termp, %struct.termp* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 4
  br label %195

49:                                               ; preds = %15
  %50 = load %struct.termp*, %struct.termp** %3, align 8
  %51 = getelementptr inbounds %struct.termp, %struct.termp* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PS_BACKSP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %139

58:                                               ; preds = %49
  %59 = load %struct.termp*, %struct.termp** %3, align 8
  %60 = getelementptr inbounds %struct.termp, %struct.termp* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 8
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 95
  br i1 %65, label %66, label %97

66:                                               ; preds = %58
  %67 = load %struct.termp*, %struct.termp** %3, align 8
  %68 = getelementptr inbounds %struct.termp, %struct.termp* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %78 [
    i32 130, label %72
    i32 129, label %73
  ]

72:                                               ; preds = %66
  br label %83

73:                                               ; preds = %66
  %74 = load %struct.termp*, %struct.termp** %3, align 8
  %75 = getelementptr inbounds %struct.termp, %struct.termp* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  store i32 130, i32* %77, align 8
  br label %83

78:                                               ; preds = %66
  %79 = load %struct.termp*, %struct.termp** %3, align 8
  %80 = getelementptr inbounds %struct.termp, %struct.termp* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 128, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %73, %72
  %84 = load i8, i8* %6, align 1
  %85 = load %struct.termp*, %struct.termp** %3, align 8
  %86 = getelementptr inbounds %struct.termp, %struct.termp* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i8 %84, i8* %88, align 8
  %89 = load i32, i32* @PS_BACKSP, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.termp*, %struct.termp** %3, align 8
  %92 = getelementptr inbounds %struct.termp, %struct.termp* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %90
  store i32 %96, i32* %94, align 4
  br label %195

97:                                               ; preds = %58
  %98 = load %struct.termp*, %struct.termp** %3, align 8
  %99 = getelementptr inbounds %struct.termp, %struct.termp* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 8
  %103 = sext i8 %102 to i32
  %104 = load i8, i8* %6, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %97
  %108 = load %struct.termp*, %struct.termp** %3, align 8
  %109 = getelementptr inbounds %struct.termp, %struct.termp* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %119 [
    i32 130, label %113
    i32 128, label %114
  ]

113:                                              ; preds = %107
  br label %124

114:                                              ; preds = %107
  %115 = load %struct.termp*, %struct.termp** %3, align 8
  %116 = getelementptr inbounds %struct.termp, %struct.termp* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  store i32 130, i32* %118, align 8
  br label %124

119:                                              ; preds = %107
  %120 = load %struct.termp*, %struct.termp** %3, align 8
  %121 = getelementptr inbounds %struct.termp, %struct.termp* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  store i32 129, i32* %123, align 8
  br label %124

124:                                              ; preds = %119, %114, %113
  %125 = load i32, i32* @PS_BACKSP, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.termp*, %struct.termp** %3, align 8
  %128 = getelementptr inbounds %struct.termp, %struct.termp* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %126
  store i32 %132, i32* %130, align 4
  br label %195

133:                                              ; preds = %97
  %134 = load %struct.termp*, %struct.termp** %3, align 8
  %135 = getelementptr inbounds %struct.termp, %struct.termp* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %5, align 8
  br label %141

139:                                              ; preds = %49
  %140 = load i64, i64* @SIZE_MAX, align 8
  store i64 %140, i64* %5, align 8
  br label %141

141:                                              ; preds = %139, %133
  %142 = load %struct.termp*, %struct.termp** %3, align 8
  %143 = call i32 @ps_plast(%struct.termp* %142)
  %144 = load i8, i8* %6, align 1
  %145 = load %struct.termp*, %struct.termp** %3, align 8
  %146 = getelementptr inbounds %struct.termp, %struct.termp* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i8 %144, i8* %148, align 8
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* @SIZE_MAX, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %190

152:                                              ; preds = %141
  %153 = load %struct.termp*, %struct.termp** %3, align 8
  %154 = getelementptr inbounds %struct.termp, %struct.termp* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.termp*, %struct.termp** %3, align 8
  %159 = getelementptr inbounds %struct.termp, %struct.termp* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ult i64 %157, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %152
  %165 = load %struct.termp*, %struct.termp** %3, align 8
  %166 = getelementptr inbounds %struct.termp, %struct.termp* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.termp*, %struct.termp** %3, align 8
  %171 = getelementptr inbounds %struct.termp, %struct.termp* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 4
  store i64 %169, i64* %173, align 8
  br label %174

174:                                              ; preds = %164, %152
  %175 = load %struct.termp*, %struct.termp** %3, align 8
  %176 = call i32 @ps_pclose(%struct.termp* %175)
  %177 = load i64, i64* %5, align 8
  %178 = load %struct.termp*, %struct.termp** %3, align 8
  %179 = getelementptr inbounds %struct.termp, %struct.termp* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  store i64 %177, i64* %181, align 8
  %182 = load i32, i32* @PS_BACKSP, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.termp*, %struct.termp** %3, align 8
  %185 = getelementptr inbounds %struct.termp, %struct.termp* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, %183
  store i32 %189, i32* %187, align 4
  br label %195

190:                                              ; preds = %141
  %191 = load %struct.termp*, %struct.termp** %3, align 8
  %192 = getelementptr inbounds %struct.termp, %struct.termp* %191, i32 0, i32 0
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 4
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %21, %83, %124, %190, %174
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ps_plast(%struct.termp*) #1

declare dso_local i32 @ps_pclose(%struct.termp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
