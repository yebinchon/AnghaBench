; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v04.c_HUF_readDTableX2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v04.c_HUF_readDTableX2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@HUF_MAX_SYMBOL_VALUE = common dso_local global i32 0, align 4
@HUF_ABSOLUTEMAX_TABLELOG = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i8*, i64)* @HUF_readDTableX2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_readDTableX2(i64* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_2__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_2__, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %24 = load i32, i32* @HUF_MAX_SYMBOL_VALUE, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i8*, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load i32, i32* @HUF_ABSOLUTEMAX_TABLELOG, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = alloca i64, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = bitcast i64* %34 to i8*
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %17, align 8
  %38 = call i32 @HUF_STATIC_ASSERT(i32 0)
  %39 = load i32, i32* @HUF_MAX_SYMBOL_VALUE, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @HUF_readStats(i8** %28, i32 %40, i64* %32, i64* %13, i64* %11, i8* %41, i64 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @HUF_isError(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i64, i64* %12, align 8
  store i64 %48, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %137

49:                                               ; preds = %3
  %50 = load i64, i64* %11, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @tableLog_tooLarge, align 4
  %57 = call i64 @ERROR(i32 %56)
  store i64 %57, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %137

58:                                               ; preds = %49
  %59 = load i64, i64* %11, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  store i64 %59, i64* %61, align 8
  store i64 0, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %62

62:                                               ; preds = %79, %58
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ule i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load i64, i64* %15, align 8
  store i64 %67, i64* %19, align 8
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds i64, i64* %32, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = sub i64 %71, 1
  %73 = shl i64 %70, %72
  %74 = load i64, i64* %15, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i64, i64* %32, i64 %77
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %66
  %80 = load i64, i64* %14, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %14, align 8
  br label %62

82:                                               ; preds = %62
  store i64 0, i64* %14, align 8
  br label %83

83:                                               ; preds = %132, %82
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %135

87:                                               ; preds = %83
  %88 = load i64, i64* %14, align 8
  %89 = getelementptr inbounds i8*, i8** %28, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = ptrtoint i8* %90 to i64
  store i64 %91, i64* %20, align 8
  %92 = load i64, i64* %20, align 8
  %93 = trunc i64 %92 to i32
  %94 = shl i32 1, %93
  %95 = ashr i32 %94, 1
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %21, align 8
  %97 = load i64, i64* %14, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i8* %98, i8** %99, align 8
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, 1
  %102 = load i64, i64* %20, align 8
  %103 = sub i64 %101, %102
  %104 = inttoptr i64 %103 to i8*
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %104, i8** %105, align 8
  %106 = load i64, i64* %20, align 8
  %107 = getelementptr inbounds i64, i64* %32, i64 %106
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %22, align 8
  br label %109

109:                                              ; preds = %123, %87
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %20, align 8
  %112 = getelementptr inbounds i64, i64* %32, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %21, align 8
  %115 = add i64 %113, %114
  %116 = icmp ult i64 %110, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %109
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %119 = load i64, i64* %22, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %119
  %121 = bitcast %struct.TYPE_2__* %120 to i8*
  %122 = bitcast %struct.TYPE_2__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 16, i1 false)
  br label %123

123:                                              ; preds = %117
  %124 = load i64, i64* %22, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %22, align 8
  br label %109

126:                                              ; preds = %109
  %127 = load i64, i64* %21, align 8
  %128 = load i64, i64* %20, align 8
  %129 = getelementptr inbounds i64, i64* %32, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, %127
  store i64 %131, i64* %129, align 8
  br label %132

132:                                              ; preds = %126
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %14, align 8
  br label %83

135:                                              ; preds = %83
  %136 = load i64, i64* %12, align 8
  store i64 %136, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %137

137:                                              ; preds = %135, %55, %47
  %138 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i64, i64* %4, align 8
  ret i64 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @HUF_STATIC_ASSERT(i32) #2

declare dso_local i64 @HUF_readStats(i8**, i32, i64*, i64*, i64*, i8*, i64) #2

declare dso_local i64 @HUF_isError(i64) #2

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
