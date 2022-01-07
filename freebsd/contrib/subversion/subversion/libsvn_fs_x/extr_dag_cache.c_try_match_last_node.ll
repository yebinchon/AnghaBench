; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_try_match_last_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_try_match_last_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_14__*, %struct.TYPE_12__*)* @try_match_last_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @try_match_last_node(i32** %0, %struct.TYPE_14__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %8, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = call i32* @cache_lookup_last_path(i32* %22, %struct.TYPE_12__* %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %81

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @svn_fs_x__dag_check_mutable(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %81, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = call i8* @svn_fs_x__dag_get_created_path(i32* %32)
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %10, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @svn_fs_x__dag_get_revision(i32* %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %31
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @memcmp(i8* %50, i32 %53, i64 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %49
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %12, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @auto_clear_dag_cache(i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %59
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @svn_fs_x__change_set_by_rev(i64 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = call %struct.TYPE_15__* @cache_lookup(i32* %69, i32 %70, %struct.TYPE_12__* %71)
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %14, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32**, i32*** %5, align 8
  store i32* %76, i32** %77, align 8
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %4, align 8
  br label %84

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %49, %42, %31
  br label %81

81:                                               ; preds = %80, %27, %3
  %82 = load i32**, i32*** %5, align 8
  store i32* null, i32** %82, align 8
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %83, i32** %4, align 8
  br label %84

84:                                               ; preds = %81, %66
  %85 = load i32*, i32** %4, align 8
  ret i32* %85
}

declare dso_local i32* @cache_lookup_last_path(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @svn_fs_x__dag_check_mutable(i32*) #1

declare dso_local i8* @svn_fs_x__dag_get_created_path(i32*) #1

declare dso_local i64 @svn_fs_x__dag_get_revision(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @auto_clear_dag_cache(i32*) #1

declare dso_local i32 @svn_fs_x__change_set_by_rev(i64) #1

declare dso_local %struct.TYPE_15__* @cache_lookup(i32*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
