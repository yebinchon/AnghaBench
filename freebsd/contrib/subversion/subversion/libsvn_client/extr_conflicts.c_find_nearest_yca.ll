; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_find_nearest_yca.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_find_nearest_yca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32**, i8*, i32, i8*, i32, i8*, i8*, i32*, i32*, i32*, i32*)* @find_nearest_yca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @find_nearest_yca(i32** %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i8* %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_8__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32** %0, i32*** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32 %2, i32* %15, align 4
  store i8* %3, i8** %16, align 8
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %31 = load i32**, i32*** %13, align 8
  store i32* null, i32** %31, align 8
  %32 = load i32*, i32** %23, align 8
  %33 = call i32* @svn_pool_create(i32* %32)
  store i32* %33, i32** %26, align 8
  %34 = load i8*, i8** %14, align 8
  store i8* %34, i8** %27, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @svn_path_component_count(i8* %35)
  store i32 %36, i32* %29, align 4
  br label %37

37:                                               ; preds = %91, %11
  %38 = load i32, i32* %29, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %29, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %95

41:                                               ; preds = %37
  %42 = load i32*, i32** %26, align 8
  %43 = call i32 @svn_pool_clear(i32* %42)
  %44 = load i8*, i8** %16, align 8
  store i8* %44, i8** %28, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @svn_path_component_count(i8* %45)
  store i32 %46, i32* %30, align 4
  br label %47

47:                                               ; preds = %87, %41
  %48 = load i32, i32* %30, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %30, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %91

51:                                               ; preds = %47
  %52 = load i8*, i8** %27, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i8*, i8** %28, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i8*, i8** %18, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = load i32*, i32** %20, align 8
  %59 = load i32*, i32** %21, align 8
  %60 = load i32*, i32** %22, align 8
  %61 = load i32*, i32** %26, align 8
  %62 = call %struct.TYPE_8__* @find_yca(i32** %24, i8* %52, i32 %53, i8* %54, i32 %55, i8* %56, i8* %57, i32* %58, i32* %59, i32* %60, i32* %61)
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %25, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %51
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %73 = call i32 @svn_error_clear(%struct.TYPE_8__* %72)
  store i32* null, i32** %24, align 8
  br label %77

74:                                               ; preds = %65
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %76 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %75)
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %12, align 8
  br label %99

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %51
  %79 = load i32*, i32** %24, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32*, i32** %24, align 8
  %83 = load i32**, i32*** %13, align 8
  store i32* %82, i32** %83, align 8
  %84 = load i32*, i32** %26, align 8
  %85 = call i32 @svn_pool_destroy(i32* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %12, align 8
  br label %99

87:                                               ; preds = %78
  %88 = load i8*, i8** %28, align 8
  %89 = load i32*, i32** %23, align 8
  %90 = call i8* @svn_relpath_dirname(i8* %88, i32* %89)
  store i8* %90, i8** %28, align 8
  br label %47

91:                                               ; preds = %47
  %92 = load i8*, i8** %27, align 8
  %93 = load i32*, i32** %23, align 8
  %94 = call i8* @svn_relpath_dirname(i8* %92, i32* %93)
  store i8* %94, i8** %27, align 8
  br label %37

95:                                               ; preds = %37
  %96 = load i32*, i32** %26, align 8
  %97 = call i32 @svn_pool_destroy(i32* %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %12, align 8
  br label %99

99:                                               ; preds = %95, %81, %74
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  ret %struct.TYPE_8__* %100
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_path_component_count(i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_8__* @find_yca(i32**, i8*, i32, i8*, i32, i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
