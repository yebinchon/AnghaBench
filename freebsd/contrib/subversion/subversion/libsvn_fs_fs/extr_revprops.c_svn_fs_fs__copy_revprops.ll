; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_revprops.c_svn_fs_fs__copy_revprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_revprops.c_svn_fs_fs__copy_revprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@APR_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__copy_revprops(i8* %0, i8* %1, i8* %2, i64 %3, i64 %4, %struct.TYPE_10__* %5, i32 %6, i32 %7, i64 %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_9__*, align 8
  %30 = alloca %struct.TYPE_9__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i64 %8, i64* %21, align 8
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  %34 = load i32*, i32** %24, align 8
  %35 = call i32* @svn_pool_create(i32* %34)
  store i32* %35, i32** %28, align 8
  %36 = load i32, i32* %19, align 4
  %37 = load i32*, i32** %24, align 8
  %38 = call %struct.TYPE_9__* @svn_stringbuf_create_ensure(i32 %36, i32* %37)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %29, align 8
  %39 = load i32*, i32** %24, align 8
  %40 = call %struct.TYPE_9__* @svn_stringbuf_create_empty(i32* %39)
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %30, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %42 = load i32*, i32** %24, align 8
  %43 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_9__* %41, i32* %42)
  store i32* %43, i32** %25, align 8
  %44 = load i32*, i32** %25, align 8
  %45 = load i64, i64* %16, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %28, align 8
  %51 = call i32 @serialize_revprops_header(i32* %44, i64 %45, %struct.TYPE_10__* %46, i32 0, i32 %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i32*, i32** %24, align 8
  %56 = call i8* @svn_dirent_join(i8* %53, i8* %54, i32* %55)
  %57 = load i32, i32* @APR_WRITE, align 4
  %58 = load i32, i32* @APR_CREATE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @APR_OS_DEFAULT, align 4
  %61 = load i32*, i32** %24, align 8
  %62 = call i32 @svn_io_file_open(i32** %26, i8* %56, i32 %59, i32 %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i64, i64* %16, align 8
  store i64 %64, i64* %27, align 8
  br label %65

65:                                               ; preds = %95, %12
  %66 = load i64, i64* %27, align 8
  %67 = load i64, i64* %17, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %65
  %70 = load i32*, i32** %28, align 8
  %71 = call i32 @svn_pool_clear(i32* %70)
  %72 = load i8*, i8** %15, align 8
  %73 = load i32*, i32** %28, align 8
  %74 = load i64, i64* %27, align 8
  %75 = call i8* @apr_psprintf(i32* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %28, align 8
  %77 = call i8* @svn_dirent_join(i8* %72, i8* %75, i32* %76)
  store i8* %77, i8** %31, align 8
  %78 = load i8*, i8** %31, align 8
  %79 = load i32, i32* @APR_READ, align 4
  %80 = load i32, i32* @APR_OS_DEFAULT, align 4
  %81 = load i32*, i32** %28, align 8
  %82 = call i32 @svn_io_file_open(i32** %33, i8* %78, i32 %79, i32 %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** %33, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32*, i32** %28, align 8
  %87 = call i32* @svn_stream_from_aprfile2(i32* %84, i32 %85, i32* %86)
  store i32* %87, i32** %32, align 8
  %88 = load i32*, i32** %32, align 8
  %89 = load i32*, i32** %25, align 8
  %90 = load i32, i32* %22, align 4
  %91 = load i8*, i8** %23, align 8
  %92 = load i32*, i32** %28, align 8
  %93 = call i32 @svn_stream_copy3(i32* %88, i32* %89, i32 %90, i8* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %95

95:                                               ; preds = %69
  %96 = load i64, i64* %27, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %27, align 8
  br label %65

98:                                               ; preds = %65
  %99 = load i32*, i32** %25, align 8
  %100 = call i32 @svn_stream_close(i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %109 = load i32, i32* %20, align 4
  %110 = call i32 @svn__compress_zlib(i32 %104, i32 %107, %struct.TYPE_9__* %108, i32 %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load i32*, i32** %26, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %24, align 8
  %120 = call i32 @svn_io_file_write_full(i32* %112, i32 %115, i32 %118, i32* null, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load i64, i64* %21, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %98
  %125 = load i32*, i32** %26, align 8
  %126 = load i32*, i32** %24, align 8
  %127 = call i32 @svn_io_file_flush_to_disk(i32* %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  br label %129

129:                                              ; preds = %124, %98
  %130 = load i32*, i32** %26, align 8
  %131 = load i32*, i32** %24, align 8
  %132 = call i32 @svn_io_file_close(i32* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  %134 = load i32*, i32** %28, align 8
  %135 = call i32 @svn_pool_destroy(i32* %134)
  %136 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %136
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_9__* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @serialize_revprops_header(i32*, i64, %struct.TYPE_10__*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i64) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn__compress_zlib(i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_flush_to_disk(i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
