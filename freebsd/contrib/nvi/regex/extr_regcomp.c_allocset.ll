; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_allocset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_allocset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i64, i64, i32* }
%struct.parse = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__*, i32, i32 }

@CHAR_BIT = common dso_local global i64 0, align 8
@MEMLIMIT = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.parse*)* @allocset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @allocset(%struct.parse* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  %10 = load %struct.parse*, %struct.parse** %3, align 8
  %11 = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %16 = load %struct.parse*, %struct.parse** %3, align 8
  %17 = getelementptr inbounds %struct.parse, %struct.parse* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.parse*, %struct.parse** %3, align 8
  %24 = getelementptr inbounds %struct.parse, %struct.parse* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %177

27:                                               ; preds = %1
  %28 = load i64, i64* @CHAR_BIT, align 8
  %29 = load %struct.parse*, %struct.parse** %3, align 8
  %30 = getelementptr inbounds %struct.parse, %struct.parse* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load %struct.parse*, %struct.parse** %3, align 8
  %36 = getelementptr inbounds %struct.parse, %struct.parse* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @CHAR_BIT, align 8
  %41 = urem i64 %39, %40
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @CHAR_BIT, align 8
  %47 = udiv i64 %45, %46
  %48 = load i64, i64* %8, align 8
  %49 = mul i64 %47, %48
  store i64 %49, i64* %6, align 8
  %50 = load %struct.parse*, %struct.parse** %3, align 8
  %51 = call i64 @MEMSIZE(%struct.parse* %50)
  %52 = load i64, i64* @MEMLIMIT, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %27
  br label %173

55:                                               ; preds = %27
  %56 = load %struct.parse*, %struct.parse** %3, align 8
  %57 = getelementptr inbounds %struct.parse, %struct.parse* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = icmp eq %struct.TYPE_5__* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load i64, i64* %5, align 8
  %64 = mul i64 %63, 40
  %65 = call i64 @malloc(i64 %64)
  %66 = inttoptr i64 %65 to %struct.TYPE_5__*
  %67 = load %struct.parse*, %struct.parse** %3, align 8
  %68 = getelementptr inbounds %struct.parse, %struct.parse* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %70, align 8
  br label %86

71:                                               ; preds = %55
  %72 = load %struct.parse*, %struct.parse** %3, align 8
  %73 = getelementptr inbounds %struct.parse, %struct.parse* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = bitcast %struct.TYPE_5__* %76 to i8*
  %78 = load i64, i64* %5, align 8
  %79 = mul i64 %78, 40
  %80 = call i64 @realloc(i8* %77, i64 %79)
  %81 = inttoptr i64 %80 to %struct.TYPE_5__*
  %82 = load %struct.parse*, %struct.parse** %3, align 8
  %83 = getelementptr inbounds %struct.parse, %struct.parse* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %85, align 8
  br label %86

86:                                               ; preds = %71, %62
  %87 = load %struct.parse*, %struct.parse** %3, align 8
  %88 = getelementptr inbounds %struct.parse, %struct.parse* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @malloc(i64 %94)
  %96 = inttoptr i64 %95 to i32*
  %97 = load %struct.parse*, %struct.parse** %3, align 8
  %98 = getelementptr inbounds %struct.parse, %struct.parse* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32* %96, i32** %100, align 8
  br label %145

101:                                              ; preds = %86
  %102 = load %struct.parse*, %struct.parse** %3, align 8
  %103 = getelementptr inbounds %struct.parse, %struct.parse* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = bitcast i32* %106 to i8*
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @realloc(i8* %107, i64 %108)
  %110 = inttoptr i64 %109 to i32*
  %111 = load %struct.parse*, %struct.parse** %3, align 8
  %112 = getelementptr inbounds %struct.parse, %struct.parse* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32* %110, i32** %114, align 8
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %141, %101
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %115
  %120 = load %struct.parse*, %struct.parse** %3, align 8
  %121 = getelementptr inbounds %struct.parse, %struct.parse* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* @CHAR_BIT, align 8
  %129 = udiv i64 %127, %128
  %130 = mul i64 %125, %129
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  %132 = load %struct.parse*, %struct.parse** %3, align 8
  %133 = getelementptr inbounds %struct.parse, %struct.parse* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  store i32* %131, i32** %140, align 8
  br label %141

141:                                              ; preds = %119
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %115

144:                                              ; preds = %115
  br label %145

145:                                              ; preds = %144, %93
  %146 = load %struct.parse*, %struct.parse** %3, align 8
  %147 = getelementptr inbounds %struct.parse, %struct.parse* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = icmp ne %struct.TYPE_5__* %150, null
  br i1 %151, label %152, label %172

152:                                              ; preds = %145
  %153 = load %struct.parse*, %struct.parse** %3, align 8
  %154 = getelementptr inbounds %struct.parse, %struct.parse* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %172

159:                                              ; preds = %152
  %160 = load %struct.parse*, %struct.parse** %3, align 8
  %161 = getelementptr inbounds %struct.parse, %struct.parse* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = bitcast i32* %164 to i8*
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* %8, align 8
  %168 = sub i64 %166, %167
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i64, i64* %8, align 8
  %171 = call i32 @memset(i8* %169, i32 0, i64 %170)
  br label %176

172:                                              ; preds = %152, %145
  br label %173

173:                                              ; preds = %172, %54
  store i32 0, i32* %4, align 4
  %174 = load i32, i32* @REG_ESPACE, align 4
  %175 = call i32 @SETERROR(i32 %174)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %215

176:                                              ; preds = %159
  br label %177

177:                                              ; preds = %176, %1
  %178 = load %struct.parse*, %struct.parse** %3, align 8
  %179 = getelementptr inbounds %struct.parse, %struct.parse* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %184
  store %struct.TYPE_5__* %185, %struct.TYPE_5__** %7, align 8
  %186 = load %struct.parse*, %struct.parse** %3, align 8
  %187 = getelementptr inbounds %struct.parse, %struct.parse* %186, i32 0, i32 1
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* %8, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* @CHAR_BIT, align 8
  %195 = udiv i64 %193, %194
  %196 = mul i64 %191, %195
  %197 = getelementptr inbounds i32, i32* %190, i64 %196
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 4
  store i32* %197, i32** %199, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = load i64, i64* @CHAR_BIT, align 8
  %203 = urem i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = shl i32 1, %204
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 3
  store i64 0, i64* %209, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  store i64 0, i64* %211, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  store i32* null, i32** %213, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %214, %struct.TYPE_5__** %2, align 8
  br label %215

215:                                              ; preds = %177, %173
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %216
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MEMSIZE(%struct.parse*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @realloc(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @SETERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
