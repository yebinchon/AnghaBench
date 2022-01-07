; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_walk_dag_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_walk_dag_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_22__*, %struct.TYPE_21__*, i32*)* @walk_dag_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @walk_dag_path(i32** %0, %struct.TYPE_22__* %1, %struct.TYPE_21__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %17 = call i32 @svn_fs_x__root_change_set(%struct.TYPE_22__* %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32**, i32*** %6, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @get_root_node(i32** %23, %struct.TYPE_22__* %24, i32 %25, i32* %26)
  %28 = call i32* @svn_error_trace(i32 %27)
  store i32* %28, i32** %5, align 8
  br label %110

29:                                               ; preds = %4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = load i32**, i32*** %6, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %38 = call i32 @try_match_last_node(i32** %35, %struct.TYPE_22__* %36, %struct.TYPE_21__* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32**, i32*** %6, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %5, align 8
  br label %110

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32*, i32** %9, align 8
  %48 = call %struct.TYPE_20__* @svn_stringbuf_create_ensure(i32 64, i32* %47)
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %15, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %51 = call i64 @extract_last_segment(%struct.TYPE_21__* %49, %struct.TYPE_21__* %14, %struct.TYPE_20__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = call i32* @dag_node_cache_get(%struct.TYPE_22__* %54, %struct.TYPE_21__* %14)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32**, i32*** %6, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @dag_step(i32** %59, %struct.TYPE_22__* %60, i32* %61, i8* %64, %struct.TYPE_21__* %65, i32 %66, i32 %67, i32* %68)
  %70 = call i32* @svn_error_trace(i32 %69)
  store i32* %70, i32** %5, align 8
  br label %110

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32*, i32** %9, align 8
  %74 = call i32* @svn_pool_create(i32* %73)
  store i32* %74, i32** %11, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @get_root_node(i32** %10, %struct.TYPE_22__* %75, i32 %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %84 = call i8* @next_entry_name(%struct.TYPE_21__* %82, %struct.TYPE_20__* %83)
  store i8* %84, i8** %13, align 8
  br label %85

85:                                               ; preds = %100, %72
  %86 = load i8*, i8** %13, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @svn_pool_clear(i32* %89)
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @FALSE, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @dag_step(i32** %10, %struct.TYPE_22__* %91, i32* %92, i8* %93, %struct.TYPE_21__* %94, i32 %95, i32 %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %100

100:                                              ; preds = %88
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %103 = call i8* @next_entry_name(%struct.TYPE_21__* %101, %struct.TYPE_20__* %102)
  store i8* %103, i8** %13, align 8
  br label %85

104:                                              ; preds = %85
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @svn_pool_destroy(i32* %105)
  %107 = load i32*, i32** %10, align 8
  %108 = load i32**, i32*** %6, align 8
  store i32* %107, i32** %108, align 8
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %109, i32** %5, align 8
  br label %110

110:                                              ; preds = %104, %58, %43, %22
  %111 = load i32*, i32** %5, align 8
  ret i32* %111
}

declare dso_local i32 @svn_fs_x__root_change_set(%struct.TYPE_22__*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @get_root_node(i32**, %struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @try_match_last_node(i32**, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @svn_stringbuf_create_ensure(i32, i32*) #1

declare dso_local i64 @extract_last_segment(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32* @dag_node_cache_get(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @dag_step(i32**, %struct.TYPE_22__*, i32*, i8*, %struct.TYPE_21__*, i32, i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @next_entry_name(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
