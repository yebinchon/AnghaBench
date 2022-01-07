; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_compress_zlib.c_zlib_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_compress_zlib.c_zlib_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64* }

@SVN__MAX_ENCODED_UINT_LEN = common dso_local global i32 0, align 4
@MIN_COMPRESS_SIZE = common dso_local global i32 0, align 4
@SVN__COMPRESSION_NONE = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"compress2\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Compression of svndiff data failed\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, %struct.TYPE_6__*, i32)* @zlib_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zlib_encode(i8* %0, i32 %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @SVN__MAX_ENCODED_UINT_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = call i32 @svn_stringbuf_setempty(%struct.TYPE_6__* %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @svn__encode_uint(i8* %20, i32 %23)
  store i8* %24, i8** %14, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = ptrtoint i8* %20 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_6__* %25, i8* %20, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MIN_COMPRESS_SIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @SVN__COMPRESSION_NONE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_6__* %43, i8* %44, i32 %45)
  br label %103

47:                                               ; preds = %38
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @svnCompressBound(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @svn_stringbuf_ensure(%struct.TYPE_6__* %48, i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = bitcast i64* %59 to i8*
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @compress2(i8* %63, i64* %10, i8* %64, i32 %65, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @Z_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %47
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @svn_error__wrap_zlib(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = call i32* @svn_error_trace(i32 %74)
  store i32* %75, i32** %5, align 8
  store i32 1, i32* %16, align 4
  br label %105

76:                                               ; preds = %47
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp uge i64 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_6__* %82, i8* %83, i32 %84)
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %5, align 8
  store i32 1, i32* %16, align 4
  br label %105

87:                                               ; preds = %76
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = add i64 %88, %90
  %92 = trunc i64 %91 to i32
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %97, i64 %101
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %87, %42
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %104, i32** %5, align 8
  store i32 1, i32* %16, align 4
  br label %105

105:                                              ; preds = %103, %81, %71
  %106 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32*, i32** %5, align 8
  ret i32* %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @svn_stringbuf_setempty(%struct.TYPE_6__*) #2

declare dso_local i8* @svn__encode_uint(i8*, i32) #2

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @svn_stringbuf_ensure(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @svnCompressBound(i32) #2

declare dso_local i32 @compress2(i8*, i64*, i8*, i32, i32) #2

declare dso_local i32* @svn_error_trace(i32) #2

declare dso_local i32 @svn_error__wrap_zlib(i32, i8*, i32) #2

declare dso_local i32 @_(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
