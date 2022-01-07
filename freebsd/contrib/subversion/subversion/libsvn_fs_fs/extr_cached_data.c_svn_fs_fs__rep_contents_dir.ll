; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__rep_contents_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__rep_contents_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_11__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__rep_contents_dir(%struct.TYPE_11__** %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32* @locate_dir_cache(i32* %19, i8** %13, %struct.TYPE_10__* %12, i32* %20, i32* %21)
  store i32* %22, i32** %15, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %5
  %26 = bitcast %struct.TYPE_9__** %14 to i8**
  %27 = load i32*, i32** %15, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @svn_cache__get(i8** %26, i64* %16, i32* %27, i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i64, i64* %16, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @get_txn_dir_info(i64* %17, i32* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i64, i64* %17, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %49, align 8
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %6, align 8
  br label %88

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %25
  br label %53

53:                                               ; preds = %52, %5
  %54 = load i32*, i32** %11, align 8
  %55 = call %struct.TYPE_9__* @apr_pcalloc(i32* %54, i32 16)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %14, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @get_dir_contents(%struct.TYPE_9__* %56, i32* %57, i32* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %66, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %53
  %70 = load i32*, i32** %15, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 150, %75
  %77 = call i64 @svn_cache__is_cachable(i32* %70, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load i32*, i32** %15, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @svn_cache__set(i32* %80, i8* %81, %struct.TYPE_9__* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %79, %69, %53
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %6, align 8
  br label %88

88:                                               ; preds = %86, %45
  %89 = load i32*, i32** %6, align 8
  ret i32* %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @locate_dir_cache(i32*, i8**, %struct.TYPE_10__*, i32*, i32*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_cache__get(i8**, i64*, i32*, i8*, i32*) #2

declare dso_local i32 @get_txn_dir_info(i64*, i32*, i32*, i32*) #2

declare dso_local %struct.TYPE_9__* @apr_pcalloc(i32*, i32) #2

declare dso_local i32 @get_dir_contents(%struct.TYPE_9__*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @svn_cache__is_cachable(i32*, i32) #2

declare dso_local i32 @svn_cache__set(i32*, i8*, %struct.TYPE_9__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
