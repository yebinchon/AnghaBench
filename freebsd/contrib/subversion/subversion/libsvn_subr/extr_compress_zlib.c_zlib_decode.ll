; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_compress_zlib.c_zlib_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_compress_zlib.c_zlib_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64* }

@SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Decompression of zlib compressed data failed: no size\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Decompression of zlib compressed data failed: size too large\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"uncompress\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Decompression of svndiff data failed\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Size of uncompressed data does not match stored original length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, %struct.TYPE_4__*, i32)* @zlib_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zlib_decode(i8* %0, i32 %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = call i8* @svn__decode_uint(i32* %11, i8* %16, i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %4
  %30 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %32 = call i32* @svn_error_create(i32 %30, i32* null, i32 %31)
  store i32* %32, i32** %5, align 8
  br label %116

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32* @svn_error_create(i32 %38, i32* null, i32 %39)
  store i32* %40, i32** %5, align 8
  br label %116

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %41
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @svn_stringbuf_ensure(%struct.TYPE_4__* %55, i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @memcpy(i64* %60, i8* %61, i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %5, align 8
  br label %116

74:                                               ; preds = %41
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %13, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @svn_stringbuf_ensure(%struct.TYPE_4__* %77, i32 %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = bitcast i64* %82 to i8*
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @uncompress(i8* %83, i64* %13, i8* %84, i32 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @Z_OK, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %74
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %93 = call i32 @svn_error__wrap_zlib(i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = call i32* @svn_error_trace(i32 %93)
  store i32* %94, i32** %5, align 8
  br label %116

95:                                               ; preds = %74
  %96 = load i64, i64* %13, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ne i64 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, align 4
  %102 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %103 = call i32* @svn_error_create(i32 %101, i32* null, i32 %102)
  store i32* %103, i32** %5, align 8
  br label %116

104:                                              ; preds = %95
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 0, i64* %109, align 8
  %110 = load i64, i64* %13, align 8
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %104
  %115 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %115, i32** %5, align 8
  br label %116

116:                                              ; preds = %114, %100, %90, %54, %37, %29
  %117 = load i32*, i32** %5, align 8
  ret i32* %117
}

declare dso_local i8* @svn__decode_uint(i32*, i8*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_stringbuf_ensure(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @uncompress(i8*, i64*, i8*, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error__wrap_zlib(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
