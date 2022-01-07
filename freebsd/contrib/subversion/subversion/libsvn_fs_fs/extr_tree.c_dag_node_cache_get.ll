; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_dag_node_cache_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_dag_node_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_6__*, i8*, i32*)* @dag_node_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dag_node_cache_get(i32** %0, %struct.TYPE_6__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  %18 = zext i1 %17 to i32
  %19 = call i32 @SVN_ERR_ASSERT(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %77, label %24

24:                                               ; preds = %4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %13, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32* @cache_lookup(i32 %32, i32 %35, i8* %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %24
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @locate_cache(i32** %11, i8** %12, %struct.TYPE_6__* %41, i8* %42, i32* %43)
  %45 = bitcast i32** %10 to i8**
  %46 = load i32*, i32** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @svn_cache__get(i8** %45, i64* %9, i32* %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %40
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @svn_fs_fs__dag_set_fs(i32* %57, %struct.TYPE_8__* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @cache_insert(i32 %64, i32 %67, i8* %68, i32* %69)
  br label %71

71:                                               ; preds = %56, %53, %40
  br label %76

72:                                               ; preds = %24
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32* @svn_fs_fs__dag_dup(i32* %73, i32* %74)
  store i32* %75, i32** %10, align 8
  br label %76

76:                                               ; preds = %72, %71
  br label %100

77:                                               ; preds = %4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @locate_cache(i32** %11, i8** %12, %struct.TYPE_6__* %78, i8* %79, i32* %80)
  %82 = bitcast i32** %10 to i8**
  %83 = load i32*, i32** %11, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @svn_cache__get(i8** %82, i64* %9, i32* %83, i8* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %77
  %91 = load i32*, i32** %10, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32*, i32** %10, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = call i32 @svn_fs_fs__dag_set_fs(i32* %94, %struct.TYPE_8__* %97)
  br label %99

99:                                               ; preds = %93, %90, %77
  br label %100

100:                                              ; preds = %99, %76
  %101 = load i32*, i32** %10, align 8
  %102 = load i32**, i32*** %5, align 8
  store i32* %101, i32** %102, align 8
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %103
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @cache_lookup(i32, i32, i8*) #1

declare dso_local i32 @locate_cache(i32**, i8**, %struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__get(i8**, i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_set_fs(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @cache_insert(i32, i32, i8*, i32*) #1

declare dso_local i32* @svn_fs_fs__dag_dup(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
