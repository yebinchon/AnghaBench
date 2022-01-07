; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_set_node_origins_for_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_set_node_origins_for_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@SVN_INT64_BUFFER_SIZE = common dso_local global i32 0, align 4
@PATH_NODE_ORIGINS_DIR = common dso_local global i32 0, align 4
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Node origin for '%s' exists with a different value (%s) than what we were about to store (%s)\00", align 1
@svn_io_file_del_none = common dso_local global i32 0, align 4
@SVN_HASH_TERMINATOR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i8*, %struct.TYPE_14__*, %struct.TYPE_12__*, i32*)* @set_node_origins_for_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_node_origins_for_file(%struct.TYPE_13__* %0, i8* %1, %struct.TYPE_14__* %2, %struct.TYPE_12__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @svn__ui64tobase36(i8* %23, i32 %26)
  store i32 %27, i32* %18, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PATH_NODE_ORIGINS_DIR, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @svn_dirent_join(i32 %30, i32 %31, i32* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @svn_fs_fs__ensure_dir_exists(i32 %33, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @get_node_origins_from_file(%struct.TYPE_13__* %40, i32** %14, i8* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %14, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %5
  %48 = load i32*, i32** %11, align 8
  %49 = call i32* @apr_hash_make(i32* %48)
  store i32* %49, i32** %14, align 8
  br label %50

50:                                               ; preds = %47, %5
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %18, align 4
  %53 = call %struct.TYPE_12__* @apr_hash_get(i32* %51, i8* %23, i32 %52)
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %15, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %59 = call i32 @svn_string_compare(%struct.TYPE_12__* %57, %struct.TYPE_12__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %63 = call i32 @_(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @svn_error_createf(i32 %62, i32* null, i32 %63, i8* %23, i32 %66, i32 %69)
  store i32* %70, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %98

71:                                               ; preds = %56, %50
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = call i32 @apr_hash_set(i32* %72, i8* %23, i32 %73, %struct.TYPE_12__* %74)
  %76 = load i8*, i8** %8, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @svn_dirent_dirname(i8* %76, i32* %77)
  %79 = load i32, i32* @svn_io_file_del_none, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @svn_stream_open_unique(i32** %13, i8** %12, i32 %78, i32 %79, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** %14, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* @SVN_HASH_TERMINATOR, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @svn_hash_write2(i32* %84, i32* %85, i32 %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @svn_stream_close(i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i8*, i8** %12, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = call i32* @svn_io_file_rename2(i8* %93, i8* %94, i32 %95, i32* %96)
  store i32* %97, i32** %6, align 8
  store i32 1, i32* %19, align 4
  br label %98

98:                                               ; preds = %71, %61
  %99 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32*, i32** %6, align 8
  ret i32* %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @svn__ui64tobase36(i8*, i32) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_fs_fs__ensure_dir_exists(i32, i32, i32*) #2

declare dso_local i32 @svn_dirent_join(i32, i32, i32*) #2

declare dso_local i32 @get_node_origins_from_file(%struct.TYPE_13__*, i32**, i8*, i32*) #2

declare dso_local i32* @apr_hash_make(i32*) #2

declare dso_local %struct.TYPE_12__* @apr_hash_get(i32*, i8*, i32) #2

declare dso_local i32 @svn_string_compare(%struct.TYPE_12__*, %struct.TYPE_12__*) #2

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32, i32, i32*, i32*) #2

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #2

declare dso_local i32 @svn_hash_write2(i32*, i32*, i32, i32*) #2

declare dso_local i32 @svn_stream_close(i32*) #2

declare dso_local i32* @svn_io_file_rename2(i8*, i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
