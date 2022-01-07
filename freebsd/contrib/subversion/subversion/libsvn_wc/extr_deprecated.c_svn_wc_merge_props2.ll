; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_merge_props2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_merge_props2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.conflict_func_1to2_baton = type { i8*, i64 }

@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"base_merge=TRUE is no longer supported; see notes/api-errata/1.7/wc006.txt\00", align 1
@conflict_func_1to2_wrapper = common dso_local global i32* null, align 8
@SVN_ERR_UNVERSIONED_RESOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @svn_wc_merge_props2(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4, i64 %5, i64 %6, i64 %7, i8* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.conflict_func_1to2_baton, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load i64, i64* %17, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %10
  %29 = load i64, i64* %18, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %33 = call i32 @U_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %34 = call %struct.TYPE_7__* @svn_error_create(i32 %32, i32* null, i32 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %11, align 8
  br label %81

35:                                               ; preds = %28, %10
  %36 = load i8*, i8** %13, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = call i32 @svn_dirent_get_absolute(i8** %22, i8* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i64, i64* %19, align 8
  %41 = getelementptr inbounds %struct.conflict_func_1to2_baton, %struct.conflict_func_1to2_baton* %25, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = load i8*, i8** %20, align 8
  %43 = getelementptr inbounds %struct.conflict_func_1to2_baton, %struct.conflict_func_1to2_baton* %25, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @svn_wc__adm_get_db(i32* %44)
  %46 = load i32*, i32** %21, align 8
  %47 = call i32 @svn_wc__context_create_with_db(i32** %24, i32* null, i32 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %24, align 8
  %51 = load i8*, i8** %22, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i64, i64* %18, align 8
  %55 = load i64, i64* %19, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %35
  %58 = load i32*, i32** @conflict_func_1to2_wrapper, align 8
  br label %60

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32* [ %58, %57 ], [ null, %59 ]
  %62 = load i32*, i32** %21, align 8
  %63 = call %struct.TYPE_7__* @svn_wc_merge_props3(i32* %49, i32* %50, i8* %51, i32* null, i32* null, i32* %52, i32* %53, i64 %54, i32* %61, %struct.conflict_func_1to2_baton* %25, i32* null, i32* null, i32* %62)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %23, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %74 [
    i32 129, label %70
    i32 128, label %70
  ]

70:                                               ; preds = %66, %66
  %71 = load i32, i32* @SVN_ERR_UNVERSIONED_RESOURCE, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %66, %70
  br label %75

75:                                               ; preds = %74, %60
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %77 = load i32*, i32** %24, align 8
  %78 = call i32 @svn_wc_context_destroy(i32* %77)
  %79 = call i32 @svn_error_compose_create(%struct.TYPE_7__* %76, i32 %78)
  %80 = call %struct.TYPE_7__* @svn_error_trace(i32 %79)
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %11, align 8
  br label %81

81:                                               ; preds = %75, %31
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  ret %struct.TYPE_7__* %82
}

declare dso_local %struct.TYPE_7__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @U_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__adm_get_db(i32*) #1

declare dso_local %struct.TYPE_7__* @svn_wc_merge_props3(i32*, i32*, i8*, i32*, i32*, i32*, i32*, i64, i32*, %struct.conflict_func_1to2_baton*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
