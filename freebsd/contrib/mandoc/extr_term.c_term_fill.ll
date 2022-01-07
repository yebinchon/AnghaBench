; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64 (%struct.termp*, i8)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i64*, i64*, i64)* @term_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @term_fill(%struct.termp* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.termp*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %14 = load i64*, i64** %7, align 8
  store i64 0, i64* %14, align 8
  %15 = load i64*, i64** %6, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.termp*, %struct.termp** %5, align 8
  %17 = getelementptr inbounds %struct.termp, %struct.termp* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %165, %4
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.termp*, %struct.termp** %5, align 8
  %24 = getelementptr inbounds %struct.termp, %struct.termp* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %22, %27
  br i1 %28, label %29, label %168

29:                                               ; preds = %21
  %30 = load %struct.termp*, %struct.termp** %5, align 8
  %31 = getelementptr inbounds %struct.termp, %struct.termp* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %138 [
    i32 8, label %38
    i32 9, label %60
    i32 32, label %60
    i32 130, label %60
    i32 10, label %102
    i32 129, label %103
    i32 128, label %130
  ]

38:                                               ; preds = %29
  %39 = load i64, i64* %9, align 8
  %40 = icmp ugt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.termp*, %struct.termp** %5, align 8
  %44 = getelementptr inbounds %struct.termp, %struct.termp* %43, i32 0, i32 0
  %45 = load i64 (%struct.termp*, i8)*, i64 (%struct.termp*, i8)** %44, align 8
  %46 = load %struct.termp*, %struct.termp** %5, align 8
  %47 = load %struct.termp*, %struct.termp** %5, align 8
  %48 = getelementptr inbounds %struct.termp, %struct.termp* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = call i64 %45(%struct.termp* %46, i8 signext %56)
  %58 = load i64, i64* %10, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %10, align 8
  br label %165

60:                                               ; preds = %29, %29, %29
  %61 = load %struct.termp*, %struct.termp** %5, align 8
  %62 = getelementptr inbounds %struct.termp, %struct.termp* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %82 [
    i32 9, label %69
    i32 32, label %72
    i32 130, label %80
  ]

69:                                               ; preds = %60
  %70 = load i64, i64* %10, align 8
  %71 = call i64 @term_tab_next(i64 %70)
  store i64 %71, i64* %11, align 8
  br label %84

72:                                               ; preds = %60
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.termp*, %struct.termp** %5, align 8
  %75 = getelementptr inbounds %struct.termp, %struct.termp* %74, i32 0, i32 0
  %76 = load i64 (%struct.termp*, i8)*, i64 (%struct.termp*, i8)** %75, align 8
  %77 = load %struct.termp*, %struct.termp** %5, align 8
  %78 = call i64 %76(%struct.termp* %77, i8 signext 32)
  %79 = add i64 %73, %78
  store i64 %79, i64* %11, align 8
  br label %84

80:                                               ; preds = %60
  %81 = load i64, i64* %10, align 8
  store i64 %81, i64* %11, align 8
  br label %84

82:                                               ; preds = %60
  %83 = call i32 (...) @abort() #3
  unreachable

84:                                               ; preds = %80, %72, %69
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %84
  br label %164

92:                                               ; preds = %87
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i64, i64* %9, align 8
  %97 = load i64*, i64** %6, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64*, i64** %7, align 8
  store i64 %98, i64* %99, align 8
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i64, i64* %11, align 8
  store i64 %101, i64* %10, align 8
  br label %165

102:                                              ; preds = %29
  store i32 1, i32* %12, align 4
  br label %165

103:                                              ; preds = %29
  store i32 1, i32* %13, align 4
  %104 = load %struct.termp*, %struct.termp** %5, align 8
  %105 = getelementptr inbounds %struct.termp, %struct.termp* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 45, i32* %110, align 4
  %111 = load %struct.termp*, %struct.termp** %5, align 8
  %112 = getelementptr inbounds %struct.termp, %struct.termp* %111, i32 0, i32 0
  %113 = load i64 (%struct.termp*, i8)*, i64 (%struct.termp*, i8)** %112, align 8
  %114 = load %struct.termp*, %struct.termp** %5, align 8
  %115 = call i64 %113(%struct.termp* %114, i8 signext 45)
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %8, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %103
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %9, align 8
  br label %164

124:                                              ; preds = %103
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, 1
  %127 = load i64*, i64** %6, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load i64*, i64** %7, align 8
  store i64 %128, i64* %129, align 8
  br label %165

130:                                              ; preds = %29
  %131 = load %struct.termp*, %struct.termp** %5, align 8
  %132 = getelementptr inbounds %struct.termp, %struct.termp* %131, i32 0, i32 1
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32 32, i32* %137, align 4
  br label %138

138:                                              ; preds = %29, %130
  store i32 1, i32* %13, align 4
  %139 = load %struct.termp*, %struct.termp** %5, align 8
  %140 = getelementptr inbounds %struct.termp, %struct.termp* %139, i32 0, i32 0
  %141 = load i64 (%struct.termp*, i8)*, i64 (%struct.termp*, i8)** %140, align 8
  %142 = load %struct.termp*, %struct.termp** %5, align 8
  %143 = load %struct.termp*, %struct.termp** %5, align 8
  %144 = getelementptr inbounds %struct.termp, %struct.termp* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %9, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = trunc i32 %150 to i8
  %152 = call i64 %141(%struct.termp* %142, i8 signext %151)
  %153 = load i64, i64* %10, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %10, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* %8, align 8
  %157 = icmp ugt i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %138
  %159 = load i64*, i64** %6, align 8
  %160 = load i64, i64* %159, align 8
  %161 = icmp ugt i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %184

163:                                              ; preds = %158, %138
  br label %165

164:                                              ; preds = %121, %91
  br label %168

165:                                              ; preds = %163, %124, %102, %100, %38
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %9, align 8
  br label %21

168:                                              ; preds = %164, %21
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %168
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* %8, align 8
  %174 = icmp ule i64 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i64*, i64** %6, align 8
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175, %171
  %180 = load i64, i64* %9, align 8
  %181 = load i64*, i64** %6, align 8
  store i64 %180, i64* %181, align 8
  %182 = load i64, i64* %10, align 8
  %183 = load i64*, i64** %7, align 8
  store i64 %182, i64* %183, align 8
  br label %184

184:                                              ; preds = %162, %179, %175, %168
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @term_tab_next(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
