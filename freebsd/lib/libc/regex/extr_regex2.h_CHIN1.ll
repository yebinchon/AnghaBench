; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regex2.h_CHIN1.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regex2.h_CHIN1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32, i64*, i32, i32, i32*, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@NC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64)* @CHIN1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CHIN1(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp sge i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @NC, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = ashr i64 %18, 3
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = and i64 %22, 7
  %24 = trunc i64 %23 to i32
  %25 = shl i32 1, %24
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %28, %31
  store i32 %32, i32* %3, align 4
  br label %170

33:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %94, %33
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %40
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @towlower(i64 %53)
  %55 = icmp eq i64 %46, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @towupper(i64 %64)
  %66 = icmp eq i64 %57, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %56, %45
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %170

74:                                               ; preds = %56
  br label %93

75:                                               ; preds = %40
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %76, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %3, align 4
  br label %170

92:                                               ; preds = %75
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %34

97:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %134, %97
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %98
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 7
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = icmp sle i64 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %104
  %116 = load i64, i64* %5, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 7
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp sle i64 %116, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %115
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %3, align 4
  br label %170

133:                                              ; preds = %115, %104
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %98

137:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %163, %137
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = icmp ult i32 %139, %142
  br i1 %143, label %144, label %166

144:                                              ; preds = %138
  %145 = load i64, i64* %5, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 6
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @iswctype(i64 %145, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %144
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %3, align 4
  br label %170

162:                                              ; preds = %144
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %138

166:                                              ; preds = %138
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %166, %155, %126, %85, %67, %14
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @towlower(i64) #1

declare dso_local i64 @towupper(i64) #1

declare dso_local i64 @iswctype(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
