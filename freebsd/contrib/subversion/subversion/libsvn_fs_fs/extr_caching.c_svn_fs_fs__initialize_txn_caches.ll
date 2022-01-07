; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_svn_fs_fs__initialize_txn_caches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_svn_fs_fs__initialize_txn_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32*, i64 }

@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_FS_FS__MIN_TXN_CURRENT_FORMAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"fsfs:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"TXNDIR\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@svn_fs_fs__serialize_txndir_entries = common dso_local global i32 0, align 4
@svn_fs_fs__deserialize_dir_entries = common dso_local global i32 0, align 4
@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@SVN_CACHE__MEMBUFFER_HIGH_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__initialize_txn_caches(%struct.TYPE_6__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17, %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load i64, i64* @TRUE, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %28, i32** %4, align 8
  br label %85

29:                                               ; preds = %17
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SVN_FS_FS__MIN_TXN_CURRENT_FORMAT, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @SVN_VA_NULL, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i8* (i32*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  store i8* %47, i8** %9, align 8
  br label %63

48:                                               ; preds = %29
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @svn_uuid_generate(i32* %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load i32, i32* @SVN_VA_NULL, align 4
  %62 = call i8* (i32*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, ...) @apr_pstrcat(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  store i8* %62, i8** %9, align 8
  br label %63

63:                                               ; preds = %48, %35
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = call i32 (...) @svn_cache__get_global_membuffer_cache()
  %67 = load i32, i32* @svn_fs_fs__serialize_txndir_entries, align 4
  %68 = load i32, i32* @svn_fs_fs__deserialize_dir_entries, align 4
  %69 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* @SVN_CACHE__MEMBUFFER_HIGH_PRIORITY, align 4
  %72 = load i64, i64* @TRUE, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = load i64, i64* @TRUE, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @create_cache(i32** %65, i32* null, i32 %66, i32 1024, i32 8, i32 %67, i32 %68, i32 %69, i8* %70, i32 %71, i64 %72, %struct.TYPE_6__* %73, i64 %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @init_txn_callbacks(%struct.TYPE_6__* %79, i32** %81, i32* %82)
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %84, i32** %4, align 8
  br label %85

85:                                               ; preds = %63, %22
  %86 = load i32*, i32** %4, align 8
  ret i32* %86
}

declare dso_local i8* @apr_pstrcat(i32*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @svn_uuid_generate(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_cache(i32**, i32*, i32, i32, i32, i32, i32, i32, i8*, i32, i64, %struct.TYPE_6__*, i64, i32*, i32*) #1

declare dso_local i32 @svn_cache__get_global_membuffer_cache(...) #1

declare dso_local i32 @init_txn_callbacks(%struct.TYPE_6__*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
