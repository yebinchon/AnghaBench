; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_stringbuf_from_aprfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_io.c_stringbuf_from_aprfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64* }
%struct.TYPE_16__ = type { i64, i64, i32 }

@SVN__STREAM_CHUNK_SIZE = common dso_local global i64 0, align 8
@APR_FINFO_SIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_14__**, i8*, i32*, i64, i32*)* @stringbuf_from_aprfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @stringbuf_from_aprfile(%struct.TYPE_14__** %0, i8* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_16__, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  %19 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %5
  %23 = bitcast %struct.TYPE_16__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = load i32, i32* @APR_FINFO_SIZE, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @apr_file_info_get(%struct.TYPE_16__* %17, i32 %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call %struct.TYPE_14__* @svn_stringbuf_create_ensure(i64 %35, i32* %36)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %14, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @svn_io_file_read_full2(i32* %38, i64* %41, i64 %42, i64* %44, i64* %18, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %56 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %6, align 8
  br label %103

58:                                               ; preds = %28, %22
  br label %59

59:                                               ; preds = %58, %5
  %60 = load i32*, i32** %11, align 8
  %61 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  %62 = call i8* @apr_palloc(i32* %60, i64 %61)
  store i8* %62, i8** %16, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call %struct.TYPE_14__* @svn_stringbuf_create_ensure(i64 %63, i32* %64)
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %14, align 8
  %66 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  store i64 %66, i64* %12, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call %struct.TYPE_15__* @svn_io_file_read(i32* %67, i8* %68, i64* %12, i32* %69)
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %13, align 8
  br label %71

71:                                               ; preds = %75, %59
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %73 = icmp ne %struct.TYPE_15__* %72, null
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_14__* %76, i8* %77, i64 %78)
  %80 = load i64, i64* @SVN__STREAM_CHUNK_SIZE, align 8
  store i64 %80, i64* %12, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call %struct.TYPE_15__* @svn_io_file_read(i32* %81, i8* %82, i64* %12, i32* %83)
  store %struct.TYPE_15__* %84, %struct.TYPE_15__** %13, align 8
  br label %71

85:                                               ; preds = %71
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %87 = icmp ne %struct.TYPE_15__* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @APR_STATUS_IS_EOF(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %96 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %95)
  store %struct.TYPE_15__* %96, %struct.TYPE_15__** %6, align 8
  br label %103

97:                                               ; preds = %88, %85
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %99 = call i32 @svn_error_clear(%struct.TYPE_15__* %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %101 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %6, align 8
  br label %103

103:                                              ; preds = %97, %94, %32
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @apr_file_info_get(%struct.TYPE_16__*, i32, i32*) #2

declare dso_local %struct.TYPE_14__* @svn_stringbuf_create_ensure(i64, i32*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_io_file_read_full2(i32*, i64*, i64, i64*, i64*, i32*) #2

declare dso_local i8* @apr_palloc(i32*, i64) #2

declare dso_local %struct.TYPE_15__* @svn_io_file_read(i32*, i8*, i64*, i32*) #2

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_14__*, i8*, i64) #2

declare dso_local i32 @APR_STATUS_IS_EOF(i32) #2

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #2

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
