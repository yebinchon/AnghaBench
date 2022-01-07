; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_cover.c_COVER_selectDict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_cover.c_COVER_selectDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32* }
%struct.TYPE_7__ = type { i64, i32, i64 }

@ZDICT_DICTSIZE_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @COVER_selectDict(%struct.TYPE_8__* noalias sret %0, i32* %1, i64 %2, i32* %3, i64* %4, i32 %5, i64 %6, i64 %7, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %8, i64* %9, i64 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca double, align 8
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32* %3, i32** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i64* %9, i64** %19, align 8
  store i64 %10, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %23, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i64 @malloc(i64 %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %24, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i64 @malloc(i64 %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %25, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to double
  %39 = fdiv double %38, 1.000000e+02
  %40 = fadd double %39, 1.000000e+00
  store double %40, double* %26, align 8
  %41 = load i32*, i32** %24, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %11
  %44 = load i32*, i32** %25, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43, %11
  %47 = load i32*, i32** %24, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load i32*, i32** %25, align 8
  %50 = call i32 @free(i32* %49)
  %51 = load i64, i64* %13, align 8
  call void @COVER_dictSelectionError(%struct.TYPE_8__* sret %0, i64 %51)
  br label %197

52:                                               ; preds = %43
  %53 = load i32*, i32** %24, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @memcpy(i32* %53, i32* %54, i64 %55)
  %57 = load i32*, i32** %24, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load i64*, i64** %15, align 8
  %63 = load i32, i32* %16, align 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @ZDICT_finalizeDictionary(i32* %57, i64 %58, i32* %59, i64 %60, i32* %61, i64* %62, i32 %63, i32 %65)
  store i64 %66, i64* %13, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i64 @ZDICT_isError(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %52
  %71 = load i32*, i32** %24, align 8
  %72 = call i32 @free(i32* %71)
  %73 = load i32*, i32** %25, align 8
  %74 = call i32 @free(i32* %73)
  %75 = load i64, i64* %13, align 8
  call void @COVER_dictSelectionError(%struct.TYPE_8__* sret %0, i64 %75)
  br label %197

76:                                               ; preds = %52
  %77 = load i64*, i64** %15, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i64*, i64** %19, align 8
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i32*, i32** %24, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i64 @COVER_checkTotalCompressedSize(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %8, i64* %77, i32* %78, i64* %79, i64 %80, i64 %81, i32* %82, i64 %83)
  store i64 %84, i64* %20, align 8
  %85 = load i64, i64* %20, align 8
  %86 = call i64 @ZSTD_isError(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %76
  %89 = load i32*, i32** %24, align 8
  %90 = call i32 @free(i32* %89)
  %91 = load i32*, i32** %25, align 8
  %92 = call i32 @free(i32* %91)
  %93 = load i64, i64* %20, align 8
  call void @COVER_dictSelectionError(%struct.TYPE_8__* sret %0, i64 %93)
  br label %197

94:                                               ; preds = %76
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %100 = load i32*, i32** %24, align 8
  %101 = ptrtoint i32* %100 to i64
  store i64 %101, i64* %99, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %103 = load i64, i64* %13, align 8
  store i64 %103, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %105 = load i64, i64* %20, align 8
  %106 = inttoptr i64 %105 to i32*
  store i32* %106, i32** %104, align 8
  %107 = load i32*, i32** %25, align 8
  %108 = call i32 @free(i32* %107)
  br label %197

109:                                              ; preds = %94
  %110 = load i64, i64* %13, align 8
  store i64 %110, i64* %21, align 8
  %111 = load i64, i64* %20, align 8
  store i64 %111, i64* %22, align 8
  %112 = load i64, i64* @ZDICT_DICTSIZE_MIN, align 8
  store i64 %112, i64* %13, align 8
  br label %113

113:                                              ; preds = %181, %109
  %114 = load i64, i64* %13, align 8
  %115 = load i64, i64* %21, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %184

117:                                              ; preds = %113
  %118 = load i32*, i32** %25, align 8
  %119 = load i32*, i32** %24, align 8
  %120 = load i64, i64* %21, align 8
  %121 = call i32 @memcpy(i32* %118, i32* %119, i64 %120)
  %122 = load i32*, i32** %25, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load i32*, i32** %23, align 8
  %125 = load i64, i64* %13, align 8
  %126 = sub i64 0, %125
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i64, i64* %13, align 8
  %129 = load i32*, i32** %14, align 8
  %130 = load i64*, i64** %15, align 8
  %131 = load i32, i32* %16, align 4
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @ZDICT_finalizeDictionary(i32* %122, i64 %123, i32* %127, i64 %128, i32* %129, i64* %130, i32 %131, i32 %133)
  store i64 %134, i64* %13, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i64 @ZDICT_isError(i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %117
  %139 = load i32*, i32** %24, align 8
  %140 = call i32 @free(i32* %139)
  %141 = load i32*, i32** %25, align 8
  %142 = call i32 @free(i32* %141)
  %143 = load i64, i64* %13, align 8
  call void @COVER_dictSelectionError(%struct.TYPE_8__* sret %0, i64 %143)
  br label %197

144:                                              ; preds = %117
  %145 = load i64*, i64** %15, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = load i64*, i64** %19, align 8
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* %18, align 8
  %150 = load i32*, i32** %25, align 8
  %151 = load i64, i64* %13, align 8
  %152 = call i64 @COVER_checkTotalCompressedSize(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %8, i64* %145, i32* %146, i64* %147, i64 %148, i64 %149, i32* %150, i64 %151)
  store i64 %152, i64* %20, align 8
  %153 = load i64, i64* %20, align 8
  %154 = call i64 @ZSTD_isError(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %144
  %157 = load i32*, i32** %24, align 8
  %158 = call i32 @free(i32* %157)
  %159 = load i32*, i32** %25, align 8
  %160 = call i32 @free(i32* %159)
  %161 = load i64, i64* %20, align 8
  call void @COVER_dictSelectionError(%struct.TYPE_8__* sret %0, i64 %161)
  br label %197

162:                                              ; preds = %144
  %163 = load i64, i64* %20, align 8
  %164 = uitofp i64 %163 to double
  %165 = load i64, i64* %22, align 8
  %166 = uitofp i64 %165 to double
  %167 = load double, double* %26, align 8
  %168 = fmul double %166, %167
  %169 = fcmp ole double %164, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %172 = load i32*, i32** %25, align 8
  %173 = ptrtoint i32* %172 to i64
  store i64 %173, i64* %171, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %175 = load i64, i64* %13, align 8
  store i64 %175, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %177 = load i64, i64* %20, align 8
  %178 = inttoptr i64 %177 to i32*
  store i32* %178, i32** %176, align 8
  %179 = load i32*, i32** %24, align 8
  %180 = call i32 @free(i32* %179)
  br label %197

181:                                              ; preds = %162
  %182 = load i64, i64* %13, align 8
  %183 = mul i64 %182, 2
  store i64 %183, i64* %13, align 8
  br label %113

184:                                              ; preds = %113
  %185 = load i64, i64* %21, align 8
  store i64 %185, i64* %13, align 8
  %186 = load i64, i64* %22, align 8
  store i64 %186, i64* %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %188 = load i32*, i32** %24, align 8
  %189 = ptrtoint i32* %188 to i64
  store i64 %189, i64* %187, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %191 = load i64, i64* %13, align 8
  store i64 %191, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %193 = load i64, i64* %20, align 8
  %194 = inttoptr i64 %193 to i32*
  store i32* %194, i32** %192, align 8
  %195 = load i32*, i32** %25, align 8
  %196 = call i32 @free(i32* %195)
  br label %197

197:                                              ; preds = %184, %170, %156, %138, %98, %88, %70, %46
  ret void
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local void @COVER_dictSelectionError(%struct.TYPE_8__* sret, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @ZDICT_finalizeDictionary(i32*, i64, i32*, i64, i32*, i64*, i32, i32) #1

declare dso_local i64 @ZDICT_isError(i64) #1

declare dso_local i64 @COVER_checkTotalCompressedSize(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i64*, i32*, i64*, i64, i64, i32*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
