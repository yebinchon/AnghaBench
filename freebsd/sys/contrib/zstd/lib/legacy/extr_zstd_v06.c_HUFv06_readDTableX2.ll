; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v06.c_HUFv06_readDTableX2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v06.c_HUFv06_readDTableX2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@HUFv06_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@HUFv06_ABSOLUTEMAX_TABLELOG = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUFv06_readDTableX2(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_2__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_2__, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %24 = load i32, i32* @HUFv06_MAX_SYMBOL_VALUE, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i8*, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load i32, i32* @HUFv06_ABSOLUTEMAX_TABLELOG, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %17, align 8
  %38 = call i32 @HUFv06_STATIC_ASSERT(i32 0)
  %39 = load i32, i32* @HUFv06_MAX_SYMBOL_VALUE, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @HUFv06_readStats(i8** %28, i32 %40, i32* %32, i32* %13, i32* %11, i8* %41, i64 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @HUFv06_isError(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i64, i64* %12, align 8
  store i64 %48, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %145

49:                                               ; preds = %3
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @tableLog_tooLarge, align 4
  %57 = call i64 @ERROR(i32 %56)
  store i64 %57, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %145

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %62

62:                                               ; preds = %82, %58
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %32, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %73, 1
  %75 = shl i32 %72, %74
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %32, i64 %80
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %62

85:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %140, %85
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %143

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %28, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = ptrtoint i8* %94 to i32
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* %20, align 4
  %97 = shl i32 1, %96
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i8* %101, i8** %102, align 8
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %20, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %32, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %22, align 4
  br label %114

114:                                              ; preds = %130, %90
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %32, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %21, align 4
  %121 = add nsw i32 %119, %120
  %122 = icmp slt i32 %115, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %114
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %125 = load i32, i32* %22, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = bitcast %struct.TYPE_2__* %127 to i8*
  %129 = bitcast %struct.TYPE_2__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 16, i1 false)
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %22, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %22, align 4
  br label %114

133:                                              ; preds = %114
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %32, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %134
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %86

143:                                              ; preds = %86
  %144 = load i64, i64* %12, align 8
  store i64 %144, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %145

145:                                              ; preds = %143, %55, %47
  %146 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i64, i64* %4, align 8
  ret i64 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HUFv06_STATIC_ASSERT(i32) #2

declare dso_local i64 @HUFv06_readStats(i8**, i32, i32*, i32*, i32*, i8*, i64) #2

declare dso_local i64 @HUFv06_isError(i64) #2

declare dso_local i64 @ERROR(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
