; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_svn_fs_fs__p2l_entry_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_svn_fs_fs__p2l_entry_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@p2l_entry_lookup_func = common dso_local global i32 0, align 4
@compare_p2l_entry_offsets = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__p2l_entry_lookup(i32** %0, %struct.TYPE_9__* %1, i32* %2, i32 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_10__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %15, align 8
  %23 = bitcast %struct.TYPE_10__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32**, i32*** %8, align 8
  store i32* null, i32** %25, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i64, i64* %12, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @get_p2l_keys(i32* %18, %struct.TYPE_10__* %16, i32* %26, %struct.TYPE_9__* %27, i32 %28, i64 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32**, i32*** %8, align 8
  %34 = bitcast i32** %33 to i8**
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @p2l_entry_lookup_func, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @svn_cache__get_partial(i8** %34, i32* %17, i32 %37, %struct.TYPE_10__* %16, i32 %38, i64* %12, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %7
  %45 = load i32*, i32** %13, align 8
  %46 = call i32* @apr_array_make(i32* %45, i32 1, i32 4)
  store i32* %46, i32** %19, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = add nsw i64 %52, 1
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @p2l_index_lookup(i32* %47, i32* %48, %struct.TYPE_9__* %49, i32 %50, i64 %51, i64 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %19, align 8
  %58 = load i64, i64* @compare_p2l_entry_offsets, align 8
  %59 = inttoptr i64 %58 to i32 (i8*, i8*)*
  %60 = call i32* @svn_sort__array_lookup(i32* %57, i64* %12, i32* null, i32 (i8*, i8*)* %59)
  %61 = load i32**, i32*** %8, align 8
  store i32* %60, i32** %61, align 8
  br label %62

62:                                               ; preds = %44, %7
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @get_p2l_keys(i32*, %struct.TYPE_10__*, i32*, %struct.TYPE_9__*, i32, i64, i32*) #2

declare dso_local i32 @svn_cache__get_partial(i8**, i32*, i32, %struct.TYPE_10__*, i32, i64*, i32*) #2

declare dso_local i32* @apr_array_make(i32*, i32, i32) #2

declare dso_local i32 @p2l_index_lookup(i32*, i32*, %struct.TYPE_9__*, i32, i64, i64, i32*) #2

declare dso_local i32* @svn_sort__array_lookup(i32*, i64*, i32*, i32 (i8*, i8*)*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
