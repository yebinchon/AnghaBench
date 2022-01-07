; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress_sequences.c_ZSTD_buildCTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress_sequences.c_ZSTD_buildCTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"ZSTD_buildCTable (dstCapacity=%u)\00", align 1
@dstSize_tooSmall = common dso_local global i32 0, align 4
@MaxSeq = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_buildCTable(i8* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32* %5, i32 %6, i64* %7, i64 %8, i32* %9, i32 %10, i32 %11, i32* %12, i64 %13, i8* %14, i64 %15) #0 {
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64*, align 8
  %35 = alloca i64*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  store i8* %0, i8** %18, align 8
  store i64 %1, i64* %19, align 8
  store i32* %2, i32** %20, align 8
  store i32 %3, i32* %21, align 4
  store i32 %4, i32* %22, align 4
  store i32* %5, i32** %23, align 8
  store i32 %6, i32* %24, align 4
  store i64* %7, i64** %25, align 8
  store i64 %8, i64* %26, align 8
  store i32* %9, i32** %27, align 8
  store i32 %10, i32* %28, align 4
  store i32 %11, i32* %29, align 4
  store i32* %12, i32** %30, align 8
  store i64 %13, i64* %31, align 8
  store i8* %14, i8** %32, align 8
  store i64 %15, i64* %33, align 8
  %41 = load i8*, i8** %18, align 8
  %42 = bitcast i8* %41 to i64*
  store i64* %42, i64** %34, align 8
  %43 = load i64*, i64** %34, align 8
  %44 = load i64, i64* %19, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64* %45, i64** %35, align 8
  %46 = load i64, i64* %19, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @DEBUGLOG(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %22, align 4
  switch i32 %49, label %144 [
    i32 128, label %50
    i32 129, label %65
    i32 131, label %70
    i32 130, label %79
  ]

50:                                               ; preds = %16
  %51 = load i32*, i32** %20, align 8
  %52 = load i32, i32* %24, align 4
  %53 = sext i32 %52 to i64
  %54 = call i64 @FSE_buildCTable_rle(i32* %51, i64 %53)
  %55 = call i32 @FORWARD_IF_ERROR(i64 %54)
  %56 = load i64, i64* %19, align 8
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @dstSize_tooSmall, align 4
  %60 = call i32 @RETURN_ERROR_IF(i32 %58, i32 %59)
  %61 = load i64*, i64** %25, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %34, align 8
  store i64 %63, i64* %64, align 8
  store i64 1, i64* %17, align 8
  br label %148

65:                                               ; preds = %16
  %66 = load i32*, i32** %20, align 8
  %67 = load i32*, i32** %30, align 8
  %68 = load i64, i64* %31, align 8
  %69 = call i32 @memcpy(i32* %66, i32* %67, i64 %68)
  store i64 0, i64* %17, align 8
  br label %148

70:                                               ; preds = %16
  %71 = load i32*, i32** %20, align 8
  %72 = load i32*, i32** %27, align 8
  %73 = load i32, i32* %29, align 4
  %74 = load i32, i32* %28, align 4
  %75 = load i8*, i8** %32, align 8
  %76 = load i64, i64* %33, align 8
  %77 = call i64 @FSE_buildCTable_wksp(i32* %71, i32* %72, i32 %73, i32 %74, i8* %75, i64 %76)
  %78 = call i32 @FORWARD_IF_ERROR(i64 %77)
  store i64 0, i64* %17, align 8
  br label %148

79:                                               ; preds = %16
  %80 = load i32, i32* @MaxSeq, align 4
  %81 = add nsw i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %36, align 8
  %84 = alloca i32, i64 %82, align 16
  store i64 %82, i64* %37, align 8
  %85 = load i64, i64* %26, align 8
  store i64 %85, i64* %38, align 8
  %86 = load i32, i32* %21, align 4
  %87 = load i64, i64* %26, align 8
  %88 = load i32, i32* %24, align 4
  %89 = call i32 @FSE_optimalTableLog(i32 %86, i64 %87, i32 %88)
  store i32 %89, i32* %39, align 4
  %90 = load i32*, i32** %23, align 8
  %91 = load i64*, i64** %25, align 8
  %92 = load i64, i64* %26, align 8
  %93 = sub i64 %92, 1
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %111

99:                                               ; preds = %79
  %100 = load i32*, i32** %23, align 8
  %101 = load i64*, i64** %25, align 8
  %102 = load i64, i64* %26, align 8
  %103 = sub i64 %102, 1
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load i64, i64* %38, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %38, align 8
  br label %111

111:                                              ; preds = %99, %79
  %112 = load i64, i64* %38, align 8
  %113 = icmp ugt i64 %112, 1
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i32, i32* %39, align 4
  %117 = load i32*, i32** %23, align 8
  %118 = load i64, i64* %38, align 8
  %119 = load i32, i32* %24, align 4
  %120 = call i64 @FSE_normalizeCount(i32* %84, i32 %116, i32* %117, i64 %118, i32 %119)
  %121 = call i32 @FORWARD_IF_ERROR(i64 %120)
  %122 = load i64*, i64** %34, align 8
  %123 = load i64*, i64** %35, align 8
  %124 = load i64*, i64** %34, align 8
  %125 = ptrtoint i64* %123 to i64
  %126 = ptrtoint i64* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 8
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* %24, align 4
  %131 = load i32, i32* %39, align 4
  %132 = call i64 @FSE_writeNCount(i64* %122, i32 %129, i32* %84, i32 %130, i32 %131)
  store i64 %132, i64* %40, align 8
  %133 = load i64, i64* %40, align 8
  %134 = call i32 @FORWARD_IF_ERROR(i64 %133)
  %135 = load i32*, i32** %20, align 8
  %136 = load i32, i32* %24, align 4
  %137 = load i32, i32* %39, align 4
  %138 = load i8*, i8** %32, align 8
  %139 = load i64, i64* %33, align 8
  %140 = call i64 @FSE_buildCTable_wksp(i32* %135, i32* %84, i32 %136, i32 %137, i8* %138, i64 %139)
  %141 = call i32 @FORWARD_IF_ERROR(i64 %140)
  %142 = load i64, i64* %40, align 8
  store i64 %142, i64* %17, align 8
  %143 = load i8*, i8** %36, align 8
  call void @llvm.stackrestore(i8* %143)
  br label %148

144:                                              ; preds = %16
  %145 = call i32 @assert(i32 0)
  %146 = load i32, i32* @GENERIC, align 4
  %147 = call i32 @RETURN_ERROR(i32 %146)
  br label %148

148:                                              ; preds = %50, %65, %70, %111, %144
  %149 = load i64, i64* %17, align 8
  ret i64 %149
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i32 @FORWARD_IF_ERROR(i64) #1

declare dso_local i64 @FSE_buildCTable_rle(i32*, i64) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @FSE_buildCTable_wksp(i32*, i32*, i32, i32, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @FSE_optimalTableLog(i32, i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @FSE_normalizeCount(i32*, i32, i32*, i64, i32) #1

declare dso_local i64 @FSE_writeNCount(i64*, i32, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @RETURN_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
