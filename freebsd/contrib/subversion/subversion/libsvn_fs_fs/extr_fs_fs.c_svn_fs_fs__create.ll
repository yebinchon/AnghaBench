; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@SVN_FS_FS__FORMAT_NUMBER = common dso_local global i32 0, align 4
@SVN_FS_FS_DEFAULT_MAX_FILES_PER_DIR = common dso_local global i32 0, align 4
@SVN_ERR_FS_UNSUPPORTED_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"FSFS is not compatible with Subversion prior to 1.1\00", align 1
@SVN_FS_CONFIG_FSFS_SHARD_SIZE = common dso_local global i32 0, align 4
@APR_INT32_MAX = common dso_local global i32 0, align 4
@SVN_FS_CONFIG_FSFS_LOG_ADDRESSING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__create(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @SVN_FS_FS__FORMAT_NUMBER, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @SVN_FS_FS_DEFAULT_MAX_FILES_PER_DIR, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @svn_fs__compatible_version(%struct.TYPE_7__** %11, i64 %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %40 [
    i32 0, label %30
    i32 1, label %34
    i32 2, label %34
    i32 3, label %34
    i32 4, label %35
    i32 5, label %36
    i32 6, label %37
    i32 7, label %37
    i32 8, label %38
    i32 9, label %39
  ]

30:                                               ; preds = %20
  %31 = load i32, i32* @SVN_ERR_FS_UNSUPPORTED_FORMAT, align 4
  %32 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %33 = call i32* @svn_error_create(i32 %31, i32* null, i32 %32)
  store i32* %33, i32** %4, align 8
  br label %79

34:                                               ; preds = %20, %20, %20
  store i32 1, i32* %8, align 4
  br label %42

35:                                               ; preds = %20
  store i32 2, i32* %8, align 4
  br label %42

36:                                               ; preds = %20
  store i32 3, i32* %8, align 4
  br label %42

37:                                               ; preds = %20, %20
  store i32 4, i32* %8, align 4
  br label %42

38:                                               ; preds = %20
  store i32 6, i32* %8, align 4
  br label %42

39:                                               ; preds = %20
  store i32 7, i32* %8, align 4
  br label %42

40:                                               ; preds = %20
  %41 = load i32, i32* @SVN_FS_FS__FORMAT_NUMBER, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %39, %38, %37, %36, %35, %34
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @SVN_FS_CONFIG_FSFS_SHARD_SIZE, align 4
  %47 = call i8* @svn_hash_gets(i64 %45, i32 %46)
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* @APR_INT32_MAX, align 4
  %53 = call i32 @svn_cstring_strtoi64(i64* %13, i8* %51, i32 0, i32 %52, i32 10)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i64, i64* %13, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %50, %42
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @SVN_FS_CONFIG_FSFS_LOG_ADDRESSING, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @svn_hash__get_bool(i64 %61, i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @svn_fs_fs__create_file_tree(%struct.TYPE_8__* %65, i8* %66, i32 %67, i32 %68, i32 %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @svn_fs_fs__write_format(%struct.TYPE_8__* %73, i32 %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %4, align 8
  br label %79

79:                                               ; preds = %58, %30
  %80 = load i32*, i32** %4, align 8
  ret i32* %80
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__compatible_version(%struct.TYPE_7__**, i64, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_hash_gets(i64, i32) #1

declare dso_local i32 @svn_cstring_strtoi64(i64*, i8*, i32, i32, i32) #1

declare dso_local i32 @svn_hash__get_bool(i64, i32, i32) #1

declare dso_local i32 @svn_fs_fs__create_file_tree(%struct.TYPE_8__*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__write_format(%struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
