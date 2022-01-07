; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__rep_contents_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__rep_contents_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__rep_contents_dir(%struct.TYPE_8__** %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32* @locate_dir_cache(i32* %17, i32* %12, i32* %18)
  store i32* %19, i32** %14, align 8
  %20 = bitcast %struct.TYPE_7__** %13 to i8**
  %21 = load i32*, i32** %14, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @svn_cache__get(i8** %20, i64* %15, i32* %21, i32* %12, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i64, i64* %15, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %5
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @get_txn_dir_info(i64* %16, i32* %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i64, i64* %16, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %42, align 8
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %43, i32** %6, align 8
  br label %76

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %5
  %46 = load i32*, i32** %11, align 8
  %47 = call %struct.TYPE_7__* @apr_pcalloc(i32* %46, i32 16)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %13, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @get_dir_contents(%struct.TYPE_7__* %48, i32* %49, i32* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %58, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 100, %64
  %66 = call i64 @svn_cache__is_cachable(i32* %59, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %45
  %69 = load i32*, i32** %14, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @svn_cache__set(i32* %69, i32* %12, %struct.TYPE_7__* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  br label %74

74:                                               ; preds = %68, %45
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %6, align 8
  br label %76

76:                                               ; preds = %74, %38
  %77 = load i32*, i32** %6, align 8
  ret i32* %77
}

declare dso_local i32* @locate_dir_cache(i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__get(i8**, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @get_txn_dir_info(i64*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @get_dir_contents(%struct.TYPE_7__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @svn_cache__is_cachable(i32*, i32) #1

declare dso_local i32 @svn_cache__set(i32*, i32*, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
