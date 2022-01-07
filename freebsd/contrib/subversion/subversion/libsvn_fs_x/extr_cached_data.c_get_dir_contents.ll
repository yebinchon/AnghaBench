; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_get_dir_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_get_dir_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SVN_INVALID_FILESIZE = common dso_local global i64 0, align 8
@APR_READ = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*, %struct.TYPE_8__*, i32*, i32*)* @get_dir_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dir_contents(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_8__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32* %20, i32** %13, align 8
  %21 = load i64, i64* @SVN_INVALID_FILESIZE, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %65

28:                                               ; preds = %5
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @svn_fs_x__is_revision(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %28
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i8* @svn_fs_x__path_txn_node_children(i32* %38, i32* %39, i32* %40, i32* %41)
  store i8* %42, i8** %17, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = load i32, i32* @APR_READ, align 4
  %45 = load i32, i32* @APR_BUFFERED, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @APR_OS_DEFAULT, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @svn_io_file_open(i32** %18, i8* %43, i32 %46, i32 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %18, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @svn_io_file_size_get(i64* %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %14, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = call i32* @svn_stream_from_aprfile2(i32* %60, i32 %61, i32* %62)
  store i32* %63, i32** %12, align 8
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %16, align 4
  br label %92

65:                                               ; preds = %28, %5
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %14, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @svn_fs_x__get_contents(i32** %12, i32* %76, %struct.TYPE_10__* %79, i32 %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %16, align 4
  br label %91

85:                                               ; preds = %65
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @apr_array_make(i32* %86, i32 0, i32 8)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %90, i32** %6, align 8
  br label %111

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %91, %37
  %93 = load i32*, i32** %12, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @svn_stringbuf_from_stream(i32** %15, i32* %93, i64 %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32*, i32** %12, align 8
  %99 = call i32 @svn_stream_close(i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %16, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @parse_dir_entries(i32* %102, i32* %103, i32 %104, i32* %105, i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %110, i32** %6, align 8
  br label %111

111:                                              ; preds = %92, %85
  %112 = load i32*, i32** %6, align 8
  ret i32* %112
}

declare dso_local i32 @svn_fs_x__is_revision(i32) #1

declare dso_local i8* @svn_fs_x__path_txn_node_children(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_file_size_get(i64*, i32*, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__get_contents(i32**, i32*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @svn_stringbuf_from_stream(i32**, i32*, i64, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @parse_dir_entries(i32*, i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
