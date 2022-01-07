; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_svn_fs_base__get_lock_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_svn_fs_base__get_lock_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@SVN_ERR_FS_NO_SUCH_LOCK = common dso_local global i64 0, align 8
@SVN_ERR_FS_LOCK_EXPIRED = common dso_local global i64 0, align 8
@SVN_ERR_FS_BAD_LOCK_TOKEN = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @svn_fs_base__get_lock_helper(i32** %0, i8* %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call %struct.TYPE_15__* @svn_fs_bdb__lock_token_get(i8** %10, i32 %14, i8* %15, %struct.TYPE_14__* %16, i32* %17)
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %11, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SVN_ERR_FS_NO_SUCH_LOCK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SVN_ERR_FS_LOCK_EXPIRED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SVN_ERR_FS_BAD_LOCK_TOKEN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %27, %21
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %41 = call i32 @svn_error_clear(%struct.TYPE_15__* %40)
  %42 = load i32**, i32*** %6, align 8
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %5, align 8
  br label %81

44:                                               ; preds = %33, %4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = call i32 @SVN_ERR(%struct.TYPE_15__* %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i32**, i32*** %6, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call %struct.TYPE_15__* @svn_fs_bdb__lock_get(i32** %48, i32 %51, i8* %52, %struct.TYPE_14__* %53, i32* %54)
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %11, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %47
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SVN_ERR_FS_LOCK_EXPIRED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SVN_ERR_FS_BAD_LOCK_TOKEN, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %72 = call i32 @svn_error_clear(%struct.TYPE_15__* %71)
  %73 = load i32**, i32*** %6, align 8
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %5, align 8
  br label %81

75:                                               ; preds = %64, %47
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %77 = call i32 @SVN_ERR(%struct.TYPE_15__* %76)
  br label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %79)
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %5, align 8
  br label %81

81:                                               ; preds = %78, %70, %39
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %82
}

declare dso_local %struct.TYPE_15__* @svn_fs_bdb__lock_token_get(i8**, i32, i8*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @svn_fs_bdb__lock_get(i32**, i32, i8*, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
