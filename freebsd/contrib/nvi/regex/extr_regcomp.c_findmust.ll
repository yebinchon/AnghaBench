; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_findmust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_findmust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64 }
%struct.re_guts = type { i32*, i64, i32*, i32, i32* }

@O_QUEST = common dso_local global i32 0, align 4
@O_CH = common dso_local global i32 0, align 4
@OOR2 = common dso_local global i32 0, align 4
@BAD = common dso_local global i32 0, align 4
@OEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, %struct.re_guts*)* @findmust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findmust(%struct.parse* %0, %struct.re_guts* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca %struct.re_guts*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store %struct.re_guts* %1, %struct.re_guts** %4, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %16 = load %struct.parse*, %struct.parse** %3, align 8
  %17 = getelementptr inbounds %struct.parse, %struct.parse* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %193

21:                                               ; preds = %2
  store i64 0, i64* %11, align 8
  %22 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %23 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32* %25, i32** %5, align 8
  %26 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %27 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %111, %21
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %34, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  switch i32 %37, label %97 [
    i32 133, label %38
    i32 130, label %49
    i32 131, label %49
    i32 128, label %49
    i32 129, label %50
    i32 132, label %50
  ]

38:                                               ; preds = %30
  %39 = load i64, i64* %11, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 -1
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 -1
  store i32* %45, i32** %10, align 8
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %110

49:                                               ; preds = %30, %30, %30
  br label %110

50:                                               ; preds = %30, %30
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 -1
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 -1
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %94, %50
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %5, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @O_QUEST, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %55
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @O_CH, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @OOR2, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @BAD, align 4
  %81 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %82 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %193

85:                                               ; preds = %75, %71, %55
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @O_QUEST, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @O_CH, align 4
  %93 = icmp ne i32 %91, %92
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i1 [ false, %86 ], [ %93, %90 ]
  br i1 %95, label %55, label %96

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %30, %96
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %100 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32*, i32** %9, align 8
  store i32* %104, i32** %7, align 8
  %105 = load i32*, i32** %10, align 8
  store i32* %105, i32** %8, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %108 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %103, %97
  store i64 0, i64* %11, align 8
  br label %110

110:                                              ; preds = %109, %49, %46
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @OEND, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %30, label %115

115:                                              ; preds = %111
  %116 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %117 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %193

121:                                              ; preds = %115
  %122 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %123 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 1
  %126 = mul i64 %125, 4
  %127 = call i32* @malloc(i64 %126)
  %128 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %129 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %128, i32 0, i32 2
  store i32* %127, i32** %129, align 8
  %130 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %131 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %121
  %135 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %136 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  br label %193

137:                                              ; preds = %121
  %138 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %139 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  store i32* %140, i32** %14, align 8
  %141 = load i32*, i32** %7, align 8
  store i32* %141, i32** %5, align 8
  %142 = load i32*, i32** %8, align 8
  store i32* %142, i32** %6, align 8
  %143 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %144 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %15, align 8
  br label %146

146:                                              ; preds = %176, %137
  %147 = load i64, i64* %15, align 8
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %179

149:                                              ; preds = %146
  br label %150

150:                                              ; preds = %160, %149
  %151 = load i32*, i32** %5, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %5, align 8
  %153 = load i32, i32* %151, align 4
  store i32 %153, i32* %12, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %6, align 8
  %156 = load i32, i32* %154, align 4
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp eq i32 %157, 133
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  br label %161

160:                                              ; preds = %150
  br label %150

161:                                              ; preds = %159
  %162 = load i32*, i32** %14, align 8
  %163 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %164 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %167 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = icmp ult i32* %162, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = load i32, i32* %13, align 4
  %174 = load i32*, i32** %14, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %14, align 8
  store i32 %173, i32* %174, align 4
  br label %176

176:                                              ; preds = %161
  %177 = load i64, i64* %15, align 8
  %178 = add nsw i64 %177, -1
  store i64 %178, i64* %15, align 8
  br label %146

179:                                              ; preds = %146
  %180 = load i32*, i32** %14, align 8
  %181 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %182 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %185 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = icmp eq i32* %180, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = load i32*, i32** %14, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %14, align 8
  store i32 0, i32* %191, align 4
  br label %193

193:                                              ; preds = %179, %134, %120, %79, %20
  ret void
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
