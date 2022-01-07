; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v03.c_ZSTD_decompressDCtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v03.c_ZSTD_decompressDCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ZSTD_frameHeaderSize = common dso_local global i64 0, align 8
@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_magicNumber = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i8*, i64)* @ZSTD_decompressDCtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressDCtx(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_3__, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %13, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %16, align 8
  %33 = load i64, i64* %11, align 8
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @ZSTD_frameHeaderSize, align 8
  %36 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %37 = add i64 %35, %36
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load i32, i32* @srcSize_wrong, align 4
  %41 = call i64 @ERROR(i32 %40)
  store i64 %41, i64* %6, align 8
  br label %154

42:                                               ; preds = %5
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @MEM_readLE32(i8* %43)
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* @ZSTD_magicNumber, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @prefix_unknown, align 4
  %50 = call i64 @ERROR(i32 %49)
  store i64 %50, i64* %6, align 8
  br label %154

51:                                               ; preds = %42
  %52 = load i64, i64* @ZSTD_frameHeaderSize, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %52
  store i32* %54, i32** %12, align 8
  %55 = load i64, i64* @ZSTD_frameHeaderSize, align 8
  %56 = load i64, i64* %17, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %17, align 8
  br label %58

58:                                               ; preds = %51, %137
  store i64 0, i64* %20, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i64 @ZSTD_getcBlockSize(i32* %59, i32 %66, %struct.TYPE_3__* %19)
  store i64 %67, i64* %21, align 8
  %68 = load i64, i64* %21, align 8
  %69 = call i64 @ZSTD_isError(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i64, i64* %21, align 8
  store i64 %72, i64* %6, align 8
  br label %154

73:                                               ; preds = %58
  %74 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %74
  store i32* %76, i32** %12, align 8
  %77 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %78 = load i64, i64* %17, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %21, align 8
  %81 = load i64, i64* %17, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* @srcSize_wrong, align 4
  %85 = call i64 @ERROR(i32 %84)
  store i64 %85, i64* %6, align 8
  br label %154

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %124 [
    i32 131, label %89
    i32 129, label %102
    i32 128, label %114
    i32 130, label %117
  ]

89:                                               ; preds = %86
  %90 = load i8*, i8** %7, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %12, align 8
  %100 = load i64, i64* %21, align 8
  %101 = call i64 @ZSTD_decompressBlock(i8* %90, i32* %91, i32 %98, i32* %99, i64 %100)
  store i64 %101, i64* %20, align 8
  br label %127

102:                                              ; preds = %86
  %103 = load i32*, i32** %15, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = ptrtoint i32* %104 to i64
  %107 = ptrtoint i32* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sdiv exact i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = load i32*, i32** %12, align 8
  %112 = load i64, i64* %21, align 8
  %113 = call i64 @ZSTD_copyUncompressedBlock(i32* %103, i32 %110, i32* %111, i64 %112)
  store i64 %113, i64* %20, align 8
  br label %127

114:                                              ; preds = %86
  %115 = load i32, i32* @GENERIC, align 4
  %116 = call i64 @ERROR(i32 %115)
  store i64 %116, i64* %6, align 8
  br label %154

117:                                              ; preds = %86
  %118 = load i64, i64* %17, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @srcSize_wrong, align 4
  %122 = call i64 @ERROR(i32 %121)
  store i64 %122, i64* %6, align 8
  br label %154

123:                                              ; preds = %117
  br label %127

124:                                              ; preds = %86
  %125 = load i32, i32* @GENERIC, align 4
  %126 = call i64 @ERROR(i32 %125)
  store i64 %126, i64* %6, align 8
  br label %154

127:                                              ; preds = %123, %102, %89
  %128 = load i64, i64* %21, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %147

131:                                              ; preds = %127
  %132 = load i64, i64* %20, align 8
  %133 = call i64 @ZSTD_isError(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i64, i64* %20, align 8
  store i64 %136, i64* %6, align 8
  br label %154

137:                                              ; preds = %131
  %138 = load i64, i64* %20, align 8
  %139 = load i32*, i32** %15, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 %138
  store i32* %140, i32** %15, align 8
  %141 = load i64, i64* %21, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 %141
  store i32* %143, i32** %12, align 8
  %144 = load i64, i64* %21, align 8
  %145 = load i64, i64* %17, align 8
  %146 = sub i64 %145, %144
  store i64 %146, i64* %17, align 8
  br label %58

147:                                              ; preds = %130
  %148 = load i32*, i32** %15, align 8
  %149 = load i32*, i32** %14, align 8
  %150 = ptrtoint i32* %148 to i64
  %151 = ptrtoint i32* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  store i64 %153, i64* %6, align 8
  br label %154

154:                                              ; preds = %147, %135, %124, %120, %114, %83, %71, %48, %39
  %155 = load i64, i64* %6, align 8
  ret i64 %155
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ZSTD_getcBlockSize(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_decompressBlock(i8*, i32*, i32, i32*, i64) #1

declare dso_local i64 @ZSTD_copyUncompressedBlock(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
