; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_dag_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_dag_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*, i8*, %struct.TYPE_12__*, i32, i64, i32*)* @dag_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dag_step(i32** %0, i32* %1, i32* %2, i8* %3, %struct.TYPE_12__* %4, i32 %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32** %0, i32*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %14, align 8
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call %struct.TYPE_14__* @svn_fs_x__dag_get_fs(i32* %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %18, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %19, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %33 = call %struct.TYPE_15__* @cache_lookup(%struct.TYPE_16__* %30, i32 %31, %struct.TYPE_12__* %32)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %20, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32**, i32*** %10, align 8
  store i32* %41, i32** %42, align 8
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %43, i32** %9, align 8
  br label %103

44:                                               ; preds = %8
  %45 = load i32*, i32** %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32*, i32** %17, align 8
  %48 = call i32 @svn_fs_x__dir_entry_id(i32* %21, i32* %45, i8* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = call i32 @svn_fs_x__id_used(i32* %21)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %44
  %53 = load i64, i64* %16, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32**, i32*** %10, align 8
  store i32* null, i32** %56, align 8
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %57, i32** %9, align 8
  br label %103

58:                                               ; preds = %52
  %59 = load i32*, i32** %17, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @apr_pstrmemdup(i32* %59, i32 %62, i32 %65)
  store i8* %66, i8** %22, align 8
  %67 = load i8*, i8** %22, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call i8* @svn_fs__canonicalize_abspath(i8* %67, i32* %68)
  store i8* %69, i8** %22, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i8*, i8** %22, align 8
  %72 = call i32* @SVN_FS__NOT_FOUND(i32* %70, i8* %71)
  store i32* %72, i32** %9, align 8
  br label %103

73:                                               ; preds = %44
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = call i64 @auto_clear_dag_cache(%struct.TYPE_16__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %85 = call %struct.TYPE_15__* @cache_lookup(%struct.TYPE_16__* %82, i32 %83, %struct.TYPE_12__* %84)
  store %struct.TYPE_15__* %85, %struct.TYPE_15__** %20, align 8
  br label %86

86:                                               ; preds = %79, %73
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %17, align 8
  %96 = call i32 @svn_fs_x__dag_get_node(i32** %88, %struct.TYPE_14__* %89, i32* %21, i32 %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32**, i32*** %10, align 8
  store i32* %100, i32** %101, align 8
  %102 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %102, i32** %9, align 8
  br label %103

103:                                              ; preds = %86, %58, %55, %38
  %104 = load i32*, i32** %9, align 8
  ret i32* %104
}

declare dso_local %struct.TYPE_14__* @svn_fs_x__dag_get_fs(i32*) #1

declare dso_local %struct.TYPE_15__* @cache_lookup(%struct.TYPE_16__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__dir_entry_id(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__id_used(i32*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32* @SVN_FS__NOT_FOUND(i32*, i8*) #1

declare dso_local i64 @auto_clear_dag_cache(%struct.TYPE_16__*) #1

declare dso_local i32 @svn_fs_x__dag_get_node(i32**, %struct.TYPE_14__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
