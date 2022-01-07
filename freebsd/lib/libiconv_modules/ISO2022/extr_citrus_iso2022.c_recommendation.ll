; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c_recommendation.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c_recommendation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @recommendation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recommendation(%struct.TYPE_5__* noalias %0, %struct.TYPE_6__* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %69, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %72

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %65, %12
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %21, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %20
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %65

41:                                               ; preds = %30
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %65

52:                                               ; preds = %41
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %55, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %160

65:                                               ; preds = %62, %51, %40
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %20

68:                                               ; preds = %20
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %9

72:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %143, %72
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %146

76:                                               ; preds = %73
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %79, i64 %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %84

84:                                               ; preds = %139, %76
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %85, %92
  br i1 %93, label %94, label %142

94:                                               ; preds = %84
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %97, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %139

105:                                              ; preds = %94
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %113, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %139

121:                                              ; preds = %110, %105
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %129, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %139

137:                                              ; preds = %126, %121
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %160

139:                                              ; preds = %136, %120, %104
  %140 = load i64, i64* %7, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %7, align 8
  br label %84

142:                                              ; preds = %84
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %73

146:                                              ; preds = %73
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %160

152:                                              ; preds = %146
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  switch i64 %155, label %158 [
    i64 131, label %156
    i64 130, label %156
    i64 129, label %157
    i64 128, label %157
  ]

156:                                              ; preds = %152, %152
  store i32 0, i32* %3, align 4
  br label %160

157:                                              ; preds = %152, %152
  store i32 1, i32* %3, align 4
  br label %160

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %157, %156, %151, %137, %63
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
