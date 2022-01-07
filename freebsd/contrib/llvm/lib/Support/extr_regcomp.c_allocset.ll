; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_allocset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_allocset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i64, i64, %struct.TYPE_6__* }
%struct.parse = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32 }

@CHAR_BIT = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.parse*)* @allocset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @allocset(%struct.parse* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  %11 = load %struct.parse*, %struct.parse** %3, align 8
  %12 = getelementptr inbounds %struct.parse, %struct.parse* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %17 = load %struct.parse*, %struct.parse** %3, align 8
  %18 = getelementptr inbounds %struct.parse, %struct.parse* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.parse*, %struct.parse** %3, align 8
  %25 = getelementptr inbounds %struct.parse, %struct.parse* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %141

28:                                               ; preds = %1
  %29 = load i64, i64* @CHAR_BIT, align 8
  %30 = load %struct.parse*, %struct.parse** %3, align 8
  %31 = getelementptr inbounds %struct.parse, %struct.parse* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  %36 = load %struct.parse*, %struct.parse** %3, align 8
  %37 = getelementptr inbounds %struct.parse, %struct.parse* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* @SIZE_MAX, align 4
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 40
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %194

46:                                               ; preds = %28
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @CHAR_BIT, align 8
  %49 = urem i64 %47, %48
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @CHAR_BIT, align 8
  %55 = udiv i64 %53, %54
  %56 = load i64, i64* %8, align 8
  %57 = mul i64 %55, %56
  store i64 %57, i64* %6, align 8
  %58 = load %struct.parse*, %struct.parse** %3, align 8
  %59 = getelementptr inbounds %struct.parse, %struct.parse* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = bitcast %struct.TYPE_6__* %62 to i8*
  %64 = load i64, i64* %5, align 8
  %65 = mul i64 %64, 40
  %66 = call i64 @realloc(i8* %63, i64 %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_6__*
  %68 = bitcast %struct.TYPE_6__* %67 to i8*
  store i8* %68, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %46
  br label %194

72:                                               ; preds = %46
  %73 = load i8*, i8** %10, align 8
  %74 = bitcast i8* %73 to %struct.TYPE_6__*
  %75 = load %struct.parse*, %struct.parse** %3, align 8
  %76 = getelementptr inbounds %struct.parse, %struct.parse* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %78, align 8
  %79 = load %struct.parse*, %struct.parse** %3, align 8
  %80 = getelementptr inbounds %struct.parse, %struct.parse* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = bitcast %struct.TYPE_6__* %83 to i8*
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @realloc(i8* %84, i64 %85)
  %87 = inttoptr i64 %86 to i32*
  %88 = bitcast i32* %87 to i8*
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %72
  br label %194

92:                                               ; preds = %72
  %93 = load i8*, i8** %10, align 8
  %94 = bitcast i8* %93 to %struct.TYPE_6__*
  %95 = load %struct.parse*, %struct.parse** %3, align 8
  %96 = getelementptr inbounds %struct.parse, %struct.parse* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %98, align 8
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %125, %92
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  %104 = load %struct.parse*, %struct.parse** %3, align 8
  %105 = getelementptr inbounds %struct.parse, %struct.parse* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @CHAR_BIT, align 8
  %113 = udiv i64 %111, %112
  %114 = mul i64 %109, %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %114
  %116 = load %struct.parse*, %struct.parse** %3, align 8
  %117 = getelementptr inbounds %struct.parse, %struct.parse* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  store %struct.TYPE_6__* %115, %struct.TYPE_6__** %124, align 8
  br label %125

125:                                              ; preds = %103
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %99

128:                                              ; preds = %99
  %129 = load %struct.parse*, %struct.parse** %3, align 8
  %130 = getelementptr inbounds %struct.parse, %struct.parse* %129, i32 0, i32 1
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = bitcast %struct.TYPE_6__* %133 to i8*
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* %8, align 8
  %137 = sub i64 %135, %136
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @memset(i8* %138, i32 0, i64 %139)
  br label %141

141:                                              ; preds = %128, %1
  %142 = load %struct.parse*, %struct.parse** %3, align 8
  %143 = getelementptr inbounds %struct.parse, %struct.parse* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = icmp eq %struct.TYPE_6__* %146, null
  br i1 %147, label %155, label %148

148:                                              ; preds = %141
  %149 = load %struct.parse*, %struct.parse** %3, align 8
  %150 = getelementptr inbounds %struct.parse, %struct.parse* %149, i32 0, i32 1
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = icmp eq %struct.TYPE_6__* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %148, %141
  br label %194

156:                                              ; preds = %148
  %157 = load %struct.parse*, %struct.parse** %3, align 8
  %158 = getelementptr inbounds %struct.parse, %struct.parse* %157, i32 0, i32 1
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %163
  store %struct.TYPE_6__* %164, %struct.TYPE_6__** %7, align 8
  %165 = load %struct.parse*, %struct.parse** %3, align 8
  %166 = getelementptr inbounds %struct.parse, %struct.parse* %165, i32 0, i32 1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i64, i64* %8, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* @CHAR_BIT, align 8
  %174 = udiv i64 %172, %173
  %175 = mul i64 %170, %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %175
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 4
  store %struct.TYPE_6__* %176, %struct.TYPE_6__** %178, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = load i64, i64* @CHAR_BIT, align 8
  %182 = urem i64 %180, %181
  %183 = trunc i64 %182 to i32
  %184 = shl i32 1, %183
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  store i64 0, i64* %190, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store i32* null, i32** %192, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %193, %struct.TYPE_6__** %2, align 8
  br label %217

194:                                              ; preds = %155, %91, %71, %45
  %195 = load %struct.parse*, %struct.parse** %3, align 8
  %196 = getelementptr inbounds %struct.parse, %struct.parse* %195, i32 0, i32 1
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = call i32 @free(%struct.TYPE_6__* %199)
  %201 = load %struct.parse*, %struct.parse** %3, align 8
  %202 = getelementptr inbounds %struct.parse, %struct.parse* %201, i32 0, i32 1
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %204, align 8
  %205 = load %struct.parse*, %struct.parse** %3, align 8
  %206 = getelementptr inbounds %struct.parse, %struct.parse* %205, i32 0, i32 1
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = call i32 @free(%struct.TYPE_6__* %209)
  %211 = load %struct.parse*, %struct.parse** %3, align 8
  %212 = getelementptr inbounds %struct.parse, %struct.parse* %211, i32 0, i32 1
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %214, align 8
  %215 = load i32, i32* @REG_ESPACE, align 4
  %216 = call i32 @SETERROR(i32 %215)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %217

217:                                              ; preds = %194, %156
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %218
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @realloc(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @SETERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
